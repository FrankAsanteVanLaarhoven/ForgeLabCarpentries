# Workshops

Each workshop gets its own dated folder with a landing page modeled on the proven Carpentries
logistics page: schedule, prerequisites, per-OS setup, collaborative-notes link, pre/post
survey links, Code of Conduct, and a resource list.

## Start a new workshop

```bash
make new-workshop SLUG=2026-09-01-robotics-nav
# or manually:
cp -r workshops/_template workshops/2026-09-01-robotics-nav
```

Then edit `index.md` and fill in every `<…>` placeholder.

## Naming convention

`workshops/YYYY-MM-DD-short-slug/` — date is the start date. Multi-day workshops use the
start date.

## Checklist (per workshop)

- [ ] Folder created from `_template/`.
- [ ] Schedule, setup, and survey links filled in.
- [ ] Collaborative notes doc (HackMD/Etherpad) created and linked.
- [ ] ≥2 certified instructors + 1–2 helpers confirmed (never teach alone).
- [ ] Cloud fallback (Codespace/Docker) tested.
- [ ] Pre-survey sent to registrants.
- [ ] Code of Conduct linked and introduced at the start.
- [ ] Post-survey sent immediately after.
- [ ] 3–6 month follow-up scheduled.
- [ ] Retrospective filed in `community/`.

See the worked example: [`2026-07-15-forgelab-foundations/`](2026-07-15-forgelab-foundations/).
