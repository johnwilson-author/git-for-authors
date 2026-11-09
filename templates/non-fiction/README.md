# [Book Title]

[One sentence about the book.]

## Status

Drafting. Last updated: [month year].

## Structure

- `chapters/` — one file per chapter, `01.md` onward
- `notes/` — sources, figures, open questions
- `research/` — working material, **not tracked** (see `.gitignore`)
- `assets/figures/` — figures as they appear in the book
- `exports/` — build outputs (not tracked)

## Sourcing

`notes/sources.md` is the working bibliography. Every source, with the chapter
it's cited in. A copyeditor will ask for it.

`notes/figures.md` lists every figure and table with its rights status.

## Build

`./build.sh` or `.\build.ps1` produces `exports/manuscript.docx` and
`exports/manuscript.epub`. The DOCX includes a table of contents to depth 2.