# Git & GitHub for Authors — Companion Repository

Everything in the book that can be a file is a file, and it all lives here.

This repository accompanies **Git & GitHub for Authors: Never Lose a Character**
ISBN: 9798140594336 by John Wilson.

---

## What's in it

| Folder | What it holds | Book chapters |
|---|---|---|
| `templates/` | The three repository templates: novel, non-fiction, series | Ch. 40 |
| `samples/` | A short novel and a short non-fiction book, fully structured | Ch. 23, 40 |
| `ready-made/` | Standalone copies of the files from Appendix D | Ch. 10.3, 7.2, 35.6 |
| `exercises/` | Starting files for the Try it boxes, including the conflicted file | Various |
| `ERRATA.md` | Corrections and clarifications, with dates | Front matter |

---

## How to get it

Clone it:

```
git clone https://github.com/John-Wilson-Author/git-for-authors.git
```

Or, if you'd rather not use the command line yet — and at the start of the book, you shouldn't — open the repository page in a browser and use the green **Code** button to download a ZIP. Everything works the same; you just won't have its history, which is the one thing the clone gives you and the ZIP doesn't.

---

## How to use a template

Templates carry this repository's history. Don't start your book on top of it — start a fresh repository:

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

Then change the five files that matter — `metadata.yaml`, `README.md`, `chapters/01.md`, `.gitignore`, `.gitattributes` — and commit.

Chapter 40.1 has the full walkthrough, including the third approach: build the structure yourself and use the template as a map.

---

## A note on versions

This repository is tagged to match the edition of the book:

- **`edition-1`** marks the state of the files as the book went to press.

If you're reading a later printing, check the repository's tags. Corrections and clarifications are noted in `ERRATA.md`, which is the authoritative list of anything that's changed.

---

## If something in the book doesn't match the repository

The repository is right.

Books are frozen at press time; repositories aren't. Open an issue on this repository, or check `ERRATA.md`, and you'll usually find that someone got there first.

---

## What this repository does not contain

- The book's text. The licence below covers these files only.
- Binary files. `reference.docx` and the cover images are generated or supplied locally — see `templates/novel/assets/README.md` and `templates/novel/make-reference.md`.

---

## Licence

The files in this repository are released under the MIT licence. See `LICENSE`.

The book's text is not.
