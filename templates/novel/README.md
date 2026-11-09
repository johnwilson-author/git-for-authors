# [Book Title]

[One sentence about the book.]

## Status

Drafting. Last updated: [month year].

## Structure

- `chapters/` — one file per chapter, `01.md` onward
- `notes/` — characters, timeline, open questions
- `assets/` — covers and interior images
- `exports/` — build outputs (not tracked)

## Naming

- Asset prefix: `[book-slug]-`
- Tags: `vNN-stage`, zero-padded
- Chapter files: `NN.md`

## Build

`./build.sh` (macOS, Linux, Git Bash) or `.\build.ps1` (PowerShell) produces
`exports/manuscript.docx` and `exports/manuscript.epub`.

First time only, generate the reference document — see `make-reference.md`.

## Division of work

[If co-authored. See Chapter 30.3.]
