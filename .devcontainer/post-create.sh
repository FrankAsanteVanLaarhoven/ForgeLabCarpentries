#!/usr/bin/env bash
# ForgeLab Carpentries devcontainer provisioning.
# Runs once after the container is created. Sets up a Python venv for executable
# lessons and guarantees the ROS 2 teaching packages used in the episodes exist.
set -euo pipefail

apt_get() { sudo apt-get "$@" 2>/dev/null || apt-get "$@"; }

echo "==> Ensuring ROS 2 teaching packages (turtlesim, demo nodes)"
apt_get update -qq || true
apt_get install -y --no-install-recommends \
  ros-jazzy-turtlesim ros-jazzy-demo-nodes-cpp || \
  echo "WARN: could not install extra ROS packages (they may already be present)"

echo "==> Creating Python virtual environment at /opt/venv"
# Ubuntu 24.04 marks system Python as externally-managed, so we use a venv.
python3 -m venv /opt/venv
/opt/venv/bin/pip install --upgrade pip
if [ -f requirements.txt ]; then
  /opt/venv/bin/pip install -r requirements.txt
fi

echo "==> Wiring interactive shells (ROS 2 + venv + display)"
RC=/root/.bashrc
if ! grep -q "ForgeLab devcontainer" "$RC" 2>/dev/null; then
  cat >> "$RC" <<'EOF'

# ForgeLab devcontainer
source /opt/ros/jazzy/setup.bash
source /opt/venv/bin/activate
export DISPLAY=${DISPLAY:-:1}
EOF
fi

echo "==> Tool versions"
quarto --version || echo "WARN: quarto not found on PATH"
/opt/venv/bin/python --version
bash -lc 'source /opt/ros/jazzy/setup.bash && echo "ROS_DISTRO=$ROS_DISTRO"'

echo "==> Setup complete. Open the 'Desktop (noVNC)' port (6080, password: vscode)"
echo "    to run GUI tools like turtlesim and rviz2."
