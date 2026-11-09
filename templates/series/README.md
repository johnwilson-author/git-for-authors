# [Series Name]

The shared repository for a series. The books live in their own repositories;
this one holds what they have in common.

## Structure

```
series/                  ← this repository
├── bible/
│   ├── characters.md
│   ├── timeline.md
│   ├── places.md
│   └── continuity-notes.md
├── maps/
└── README.md

book-1/                  ← separate repository, from templates/novel
book-2/                  ← separate repository, from templates/novel
```

Chapter 27.4 explains why the books are separate repositories. The short
version: a repository is a unit of history, and six books in one log is six
books of noise.

## Naming decisions

Fill these in before book two, not after. Chapter 34.5 has the reasoning.

- **Repositories:** `book-1`, `book-2` (numbers survive a title change)
- **Asset prefix:** `[series-slug]-` (e.g. `salt-house-cover-ebook.jpg`)
- **Tag prefix, cross-book:** `bookN-vNN-stage` (e.g. `book2-v01-first-draft`)
- **Tag prefix, within a book:** `vNN-stage`

## The bible

`bible/` records **settled facts** — what you've decided. Open questions belong
in the book repository's issues, or in its `notes/open-questions.md`.
Chapter 19.5 draws the line.

When a question is settled, the decision goes here and the issue closes. That's
the loop that makes a series converge instead of accumulating.

## Shared assets

Copy them into each book's `assets/` folder. Don't symlink and don't use
submodules — Chapter 27.4 explains why self-contained repositories are worth
more than the duplication costs.

A map in six books is six copies and 1.2 MB, which is nothing.
