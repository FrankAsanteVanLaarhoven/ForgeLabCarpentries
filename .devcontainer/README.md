# Dev Container / Codespace

This is the **one-click cloud environment** referenced in the lesson setup and workshop pages.
Open it from GitHub → **Code ▸ Codespaces ▸ Create codespace on main** (or in VS Code with the
Dev Containers extension: *Reopen in Container*).

## What's preinstalled

| Tool | Source | Notes |
|------|--------|-------|
| **ROS 2 Jazzy (desktop)** | base image `osrf/ros:jazzy-desktop` | `rviz2`, `turtlesim`, `demo_nodes_cpp` included |
| **Quarto** | rocker `quarto-cli` feature | builds the lesson site (`make preview`) |
| **Python 3 + venv** | `/opt/venv` (from `requirements.txt`) | for executable lesson cells |
| **GitHub CLI** | `github-cli` feature | `gh` for repo/PR workflows |
| **Browser desktop** | `desktop-lite` feature | noVNC on port **6080** for GUI apps |

Interactive shells automatically `source` the ROS 2 setup and activate the Python venv
(see `post-create.sh`).

## Running GUI tools (turtlesim, rviz2)

Codespaces has no physical display, so GUI apps render to a virtual one served over the web:

1. Open the forwarded **port 6080** ("Desktop (noVNC)") — VS Code prompts you, or use the Ports tab.
2. Password: **`vscode`**.
3. In a terminal, launch e.g. `ros2 run turtlesim turtlesim_node` — the window appears in the
   noVNC browser tab (the terminal already exports `DISPLAY=:1`).

## Quick checks

```bash
quarto --version
ros2 --version            # or: echo $ROS_DISTRO  -> jazzy
make preview              # serve the lesson site
ros2 run demo_nodes_cpp talker   # confirm ROS works (Episode 3)
```

## Notes

- First build pulls the full ROS desktop image, so initial creation takes a few minutes.
- The default desktop password (`vscode`) is fine for ephemeral learning Codespaces; change it
  if you persist or share a container.
