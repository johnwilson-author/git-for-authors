# Templates

Three repository templates, one per kind of book. Chapter 40 explains them;
this file is the map.

| Template | For | Chapter |
|---|---|---|
| `novel/` | Fiction: one file per chapter, headings only, minimal notes | 40.2 |
| `non-fiction/` | Non-fiction: per-chapter front matter, sources and figures, a git-ignored research folder | 40.3 |
| `series/` | A shared bible repository plus one novel template per book | 40.4 |

## Using one

Don't start your book on top of this repository's history. Copy the folder,
remove `.git`, and initialise fresh:

On **macOS**, **Linux**, and **Windows Git Bash**:

```
cp -r templates/novel ~/my-novel
cd ~/my-novel
rm -rf .git
git init
```

On **Windows PowerShell**:

```
Copy-Item -Recurse templates/novel $HOME\my-novel
Set-Location $HOME\my-novel
Remove-Item -Recurse -Force .git
git init
```

## Two things that are not shipped

**`reference.docx`** — a binary file. Generate it with one command; see
`novel/make-reference.md`.

**Cover images** — placeholders. See `novel/assets/README.md`.

Both are deliberate: Chapter 10.2 explains why binaries don't belong in a
repository, and a template that ships one is a template that teaches the wrong
habit.

## What every template contains

- `chapters/` — placeholder chapter files, to be replaced
- `notes/` — structured but empty
- `assets/` — with a README explaining what goes in it
- `exports/` — present and git-ignored
- `metadata.yaml`, `blurb.md`, `bio.md`, `keywords.md`
- `build.sh` and `build.ps1` — the export script, both flavours
- `.gitignore`, `.gitattributes`
- `README.md` — the front door, with placeholders
- `.github/ISSUE_TEMPLATE/` — five templates (novel and non-fiction only)
