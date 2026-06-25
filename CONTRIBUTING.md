# Contributing to ForgeLab Carpentries

Thank you for helping build ForgeLab Carpentries! Contributions of all kinds are welcome —
fixing a typo, improving an exercise, authoring a new episode, hosting a workshop, or
training as an instructor. This guide explains how.

By participating, you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md).

## Ways to contribute

| You want to… | Start here |
|--------------|-----------|
| Report a bug or unclear instruction in a lesson | Open an issue using **Lesson bug** template |
| Propose a new episode or exercise | Open an issue using **New episode** template |
| Request or host a workshop | Open an issue using **Workshop request** template |
| Fix or improve content | Fork → branch → pull request (see below) |
| Become a helper or instructor | See [instructors/](instructors/) |

## Contribution pathway

We follow the Carpentries community-role progression. Everyone is welcome at every stage:

```
Learner → Helper → Instructor → Maintainer / Lesson Developer → Trainer → Organizer
```

See [community/roles-and-pathways.md](community/roles-and-pathways.md) for what each role does
and how to move between them.

## Making a content contribution (PR workflow)

1. **Fork** this repository and **clone** your fork.
2. Create a descriptive branch: `git checkout -b fix/ros2-nav-typo` or `feat/add-vln-episode`.
3. Make your change. For lessons, edit the `.qmd` files under `lessons/episodes/`.
4. Preview locally: `make preview` (see [README](README.md#quick-start)).
5. Run checks: `make check`.
6. Commit with a clear message and push to your fork.
7. Open a pull request against `main`. Fill in the PR template.
8. A maintainer will review. Expect friendly, constructive feedback — that's the point.

## Lesson authoring conventions

Every episode (`lessons/episodes/NN-slug.qmd`) should include:

- **Learning objectives** at the top (what the learner will be able to *do*).
- **Estimated teaching + exercise time.**
- **Narrative + live-coding sections** — write what the instructor types and says.
- At least one **challenge** with a collapsible solution.
- **Key points** summary at the end.
- **Instructor notes** for any common pitfalls (these surface in `lessons/instructor-notes.qmd`).

Keep demos short and exercises frequent — this combats fatigue, especially online.

## Style

- Prefer plain, welcoming language. Define jargon on first use.
- Code should run as written. Test every command and cell.
- Accessibility: provide alt text for images, use descriptive link text, avoid color-only meaning.

## Questions?

Open a discussion or email frankleroyvan@gmail.com. We're glad you're here.
