# ForgeLab Carpentries

> Hands-on, evidence-based workshops for robotics, autonomy, and applied AI — built on the proven Carpentries pedagogy, modernized for 2026+.

ForgeLab Carpentries adapts the battle-tested [Carpentries](https://carpentries.org/) model
(participatory live coding, co-teaching, inclusive design, pre/post assessment) to a curriculum
focused on **robotics, physical autonomous systems, and applied AI** — delivered online, in-person,
or hybrid.

## What we teach

| Track | Focus |
|-------|-------|
| **Foundations** | Unix/Linux, Bash/shell, Git & version control, CI/CD pipelines |
| **Robotics & Autonomy** | ROS 2, navigation, perception, physical autonomous systems, sim-to-real |
| **AI & World Models** | VLA (vision-language-action), VLN (vision-language navigation), language models, world models |
| **Cloud & Deployment** | Containerized robotics, fleet/cloud deployment, reproducible infrastructure |
| **Blockchain** | Decentralized systems, smart contracts, verifiable compute for autonomous agents |
| **Capstones & Certification** | End-to-end projects, instructor checkout, learner micro-credentials |

See [`curriculum/`](curriculum/) for the full track maps.

## Core principles (non-negotiable)

- **Evidence-based pedagogy** — short cycles of demo → practice → debrief.
- **Participatory live coding** — instructors code live; learners code along. Never passive lectures.
- **Inclusive & welcoming** — a strong, enforced [Code of Conduct](CODE_OF_CONDUCT.md). Psychological safety first.
- **Co-teaching ("never teach alone")** — minimum 2 instructors + helpers per workshop.
- **Open, collaborative & modular** — all materials here on GitHub; contributions via PRs; reusable episodes.
- **Data-driven iteration** — standardized [pre/post surveys](surveys/) and retrospectives.
- **Hybrid-ready by design** — the same core structure works online, in-person, or blended.
- **Sustainable community** — clear pathways from Learner → Helper → Instructor → Maintainer → Trainer.

## Repository layout

```
ForgeLab-Carpentries/
├── lessons/            # Quarto lesson site (episodes, setup, reference, instructor notes)
├── curriculum/         # Track maps and learning pathways
├── workshops/          # Per-workshop landing pages (schedule, setup, surveys, CoC)
│   ├── _template/      # Copy this to start a new workshop
│   └── 2026-07-15-…/   # Worked example: Foundations pilot
├── instructors/        # Instructor training curriculum, handbook, checkout, dashboard
├── surveys/            # Pre / post / 3–6 month follow-up question banks
├── community/          # Roles & pathways, retrospective template
└── .github/            # CI (Quarto render + deploy), issue/PR templates
```

## Quick start

```bash
# Build and preview the lesson site locally (requires Quarto + Python)
make setup      # one-time: install Python deps
make preview    # live-reloading local preview of lessons/
make render     # static build into lessons/_site
make check      # link-check + lint
```

The lesson site publishes automatically to GitHub Pages on every push to `main`
via [`.github/workflows/publish.yml`](.github/workflows/publish.yml).

## Running a workshop

1. Copy `workshops/_template/` to `workshops/<YYYY-MM-DD-slug>/`.
2. Fill in schedule, setup instructions, survey links, and collaborative-notes link.
3. Recruit ≥2 certified instructors + helpers ([instructors/](instructors/)).
4. Send the pre-survey, run the workshop, send the post-survey.
5. File a retrospective using [`community/retrospective-template.md`](community/retrospective-template.md).

See the worked example in [`workshops/2026-07-15-forgelab-foundations/`](workshops/2026-07-15-forgelab-foundations/).

## Contributing

We welcome lesson contributions, workshop hosts, helpers, and instructors.
Start with [CONTRIBUTING.md](CONTRIBUTING.md) and read the [Code of Conduct](CODE_OF_CONDUCT.md).

## License

- **Instructional content** (lessons, workshops, surveys): [CC-BY 4.0](LICENSE.md).
- **Code** (build scripts, workflows, tooling): [MIT](LICENSE.md).

Maintained by Frank Asante Van Laarhoven.
