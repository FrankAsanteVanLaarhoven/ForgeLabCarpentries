# Track: Robotics & Autonomy

**Audience:** engineers/researchers building physical or simulated autonomous systems.
**Prerequisites:** Foundations (shell, Git); Python basics helpful.
**Outcome:** build, inspect, and navigate ROS 2 systems, and reason about sim-to-real.

## Episodes

| # | Episode | Objectives (learner can…) | Status |
|---|---------|---------------------------|--------|
| 3 | Robot Navigation with ROS 2 | explain node/topic model, inspect a system, publish `cmd_vel`, describe the nav stack | live |
| 6 | Nodes, Topics & Your First Package | scaffold a package, write a publisher/subscriber node | planned |
| 7 | Perception Basics | consume camera/LiDAR, transform frames (TF2), visualize in RViz | planned |
| 8 | Localization & Mapping (SLAM) | run SLAM, save/load maps, localize with AMCL | planned |
| 9 | The Nav2 Stack End-to-End | configure costmaps, planners, controllers; send goals; tune recovery | planned |
| 10 | Sim-to-Real | bridge simulation (Gazebo/Isaac) to hardware; manage the reality gap | planned |

## Design notes

- Default to **simulation first** (turtlesim → Gazebo) so no hardware is required to learn.
- Every episode offers a Docker/Codespace path; native install is optional.
- Connects forward: the nav goal interface is the integration point for the AI track (VLN
  produces goals; world models predict outcomes).

## Suggested workshop slices

- **Intro day:** Episodes 3 + 6.
- **Navigation deep-dive (2 days):** Episodes 6–9.
