# Curriculum

ForgeLab Carpentries is organized into **tracks**. Each track is a sequence of episodes built
around explicit learning objectives, following the demo → practice → debrief loop.

Tracks are modular: a workshop can be a single track, a slice of one, or a blend. Start small.

## Tracks

| Track | File | Prereqs | Status |
|-------|------|---------|--------|
| Foundations | [tracks/foundations.md](tracks/foundations.md) | none | episodes live |
| Robotics & Autonomy | [tracks/robotics-autonomy.md](tracks/robotics-autonomy.md) | Foundations | episode 3 live |
| AI & World Models | [tracks/ai-world-models.md](tracks/ai-world-models.md) | Foundations + Python | outline |
| Cloud & Deployment | [tracks/cloud-deployment.md](tracks/cloud-deployment.md) | Foundations | outline |
| Blockchain | [tracks/blockchain.md](tracks/blockchain.md) | Foundations | outline |
| Capstones & Certification | [tracks/capstones-certification.md](tracks/capstones-certification.md) | one+ track | outline |

## Learning pathways

```
Foundations ─┬─▶ Robotics & Autonomy ─┐
             │                         ├─▶ Capstones & Certification
             ├─▶ AI & World Models ────┤
             ├─▶ Cloud & Deployment ───┤
             └─▶ Blockchain ───────────┘
```

Most learners start with **Foundations**, then choose one or more specialization tracks, and
finish with a **Capstone** that earns a micro-credential.

## Authoring a new episode

1. Pick the track and a slot in its episode list.
2. Create `lessons/episodes/NN-slug.qmd` (copy an existing episode's structure).
3. Add it to the sidebar in `lessons/_quarto.yml`.
4. Open a PR. See [CONTRIBUTING](../CONTRIBUTING.md).

Every episode must declare objectives, include ≥1 challenge with a solution, and end with key
points. Keep demos short and exercises frequent.
