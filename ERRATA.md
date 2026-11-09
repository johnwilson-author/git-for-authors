# Errata and Updates

Corrections and clarifications, newest first. This file is the authoritative
list of anything that differs between the printed book and this repository.

If you find something that isn't here, open an issue using the **Errata**
template.

---

## edition-1 (current)

State of the files as the book went to press.

### Known differences between the book and this repository

**Chapter 25.7 — cover image filename**

The book's build script uses `--epub-cover-image=assets/cover.jpg`. The
templates use `assets/cover-ebook.jpg`, which matches the naming convention in
Chapter 34.5 (`book-cover-format`). Either name works; the flag must match the
file in your `assets/` folder. **The repository's convention is correct** —
Chapter 34.5 is the later and more considered recommendation.

**Chapter 25.7 — build scripts are more defensive than the book's version**

The book's script runs `pandoc` unconditionally with `--reference-doc` and
`--epub-cover-image`. The templates check that those files exist first, so a
first build on a fresh template succeeds even before you've added a cover or
generated `reference.docx`. Behaviour is otherwise identical.

**Chapter 40.2 — `reference.docx` is not included**

`reference.docx` is a binary file. It is not shipped in this repository, for
the reasons in Chapter 10.2. Generate it in one command:

On **macOS**, **Linux**, and **Windows Git Bash**:

```
pandoc --print-default-data-file reference.docx > reference.docx
```

On **Windows PowerShell**:

```
pandoc --print-default-data-file reference.docx -o reference.docx
```

Then edit its styles as described in Chapter 25.6. See
`templates/novel/make-reference.md`.

**Chapter 40.2 — cover images are not included**

Placeholder notes live in `templates/novel/assets/README.md`. Add your own
`cover-ebook.jpg`, or run without a cover and the build will skip the flag.

---

## How to report an erratum

Open an issue and choose the **Errata** template. Include:

- The chapter and section (e.g. `Ch. 25.7`)
- The printed text
- What you expected, or what the repository does instead

Corrections are tagged in the repository's history, so `git log --oneline -- ERRATA.md`
is the full record of what has changed and when.
