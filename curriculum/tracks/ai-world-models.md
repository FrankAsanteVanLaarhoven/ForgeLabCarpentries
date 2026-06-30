# Track: AI & World Models

**Audience:** practitioners connecting learning-based AI to perception, planning, and control.
**Prerequisites:** Foundations + Python; Robotics track helpful for the embodied episodes.
**Outcome:** understand and prototype VLA/VLN pipelines and world-model–based planning.

## Episodes

| # | Episode | Objectives (learner can…) | Status |
|---|---------|---------------------------|--------|
| 11 | Language Models as Robot Interfaces | use an LM for instruction parsing, tool/function calling, structured plans | live |
| 12 | Vision-Language Navigation (VLN) | turn a natural-language instruction into a sequence of nav goals | live |
| 13 | Vision-Language-Action (VLA) | map observations + instruction to actions; evaluate a policy | live |
| 14 | World Models for Planning | learn/forward a dynamics model; plan by imagined rollouts | live |
| 15 | Evaluation & Safety | benchmark task success, measure failures, add guardrails & fallbacks | live |

## Design notes

- Pedagogy stays Carpentries-style even for ML: short runnable cells, frequent checks, no
  passive lecturing. Use small/hosted models so cells run in a workshop timeframe.
- Default to provider-agnostic interfaces; document model IDs and costs in setup.
- Emphasize **honest evaluation**: report task-success rates and failure taxonomies, not demos.
- Ground every abstraction in the nav interface from the Robotics track (goals, `cmd_vel`).

## Suggested workshop slices

- **"LMs for Robotics" half-day:** Episodes 11–12.
- **"From Instruction to Action" 2 days:** Episodes 11–15.
