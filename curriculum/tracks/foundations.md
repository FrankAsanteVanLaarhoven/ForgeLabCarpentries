# Track: Foundations

**Audience:** anyone new to systems work — researchers, students, domain experts.
**Prerequisites:** none.
**Outcome:** confidently operate the shell, version code with Git, and automate with CI/CD.

## Episodes

| # | Episode | Objectives (learner can…) | Status |
|---|---------|---------------------------|--------|
| 1 | The Unix Shell for Roboticists | navigate FS, manipulate files, pipe data, write a Bash script | live |
| 2 | Version Control with Git | commit, branch, read history, collaborate via PRs | live |
| 3 | Bash Scripting & Automation | write robust scripts (`set -euo pipefail`), args, loops, functions | planned |
| 4 | CI/CD Pipelines (GitHub Actions) | write a workflow, run tests on push, build/deploy artifacts | planned |
| 5 | Reproducible Environments | virtual envs, containers, lockfiles; "works on my machine" → "works everywhere" | planned |

## Design notes

- Every command is run by learners, not just shown.
- Examples use robotics-flavored data (sensor logs, nav configs) so skills feel relevant.
- Episode 4 (CI/CD) sets up the deployment muscle reused by Cloud, Robotics, and Capstone tracks.

## Suggested workshop slices

- **Half-day "Git & Shell Bootcamp":** Episodes 1–2.
- **Full-day "Reproducible Robotics Dev":** Episodes 1–2 + 4–5.
