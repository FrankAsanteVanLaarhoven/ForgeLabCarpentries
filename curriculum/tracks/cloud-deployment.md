# Track: Cloud & Deployment

**Audience:** teams taking robotics/AI workloads from laptop to fleet and cloud.
**Prerequisites:** Foundations (Git, CI/CD, reproducible environments).
**Outcome:** containerize, deploy, and operate robotics/AI services reproducibly.

## Episodes

| # | Episode | Objectives (learner can…) | Status |
|---|---------|---------------------------|--------|
| 16 | Containers for Robotics | build a reproducible image, mount data, run ROS 2 in Docker | outline |
| 17 | From CI to CD | extend the CI pipeline to build & publish images on tag | outline |
| 18 | Deploying to the Cloud | run a service on a managed platform; manage secrets & env vars | outline |
| 19 | Fleet & Edge | push updates to many devices; observability and rollback | outline |
| 20 | Cost, Scaling & Reliability | autoscaling, GPU scheduling, SLOs, graceful degradation | outline |

## Design notes

- Reuse the CI pipeline built in Foundations Episode 4 — don't reteach, extend it.
- Keep cloud examples portable; call out where a managed platform simplifies the path.
- Treat **rollback and observability** as first-class — autonomy in production fails loudly,
  and learners should practice recovering, not just deploying.

## Suggested workshop slices

- **"Containerize & Ship" half-day:** Episodes 16–17.
- **"Operate a Fleet" 2 days:** Episodes 16–20.
