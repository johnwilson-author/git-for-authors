# Assets

Images that are part of the book. Chapter 27 covers what belongs here and
Chapter 34.3 covers managing cover revisions.

## What goes here

- `cover-ebook.jpg` — the ebook cover, storefront dimensions
- `cover-print.pdf` — the print cover, with spine (print only)
- `cover-thumbnail.jpg` — small version for your site and ads
- `interior/` — illustrations, maps, anything referenced by a chapter

## What does not go here

- Layered design sources (`.psd`, `.ai`). Archive folder — Chapter 34.3.
- Research images you'll never publish. Chapter 27.1.
- Exports. Those are `exports/`, and git-ignored.

## The files are not shipped

This template has no images. Add your own — and if they're large, set up Git
LFS first (Chapter 27.2):

```
git lfs track "*.jpg"
git add .gitattributes
git commit -m "Track JPEG files with Git LFS"
```

Then add the image and commit it.

If you have no cover yet, the build script skips the cover flag and produces an
EPUB without one. That's fine for a first build; add the cover before you send
the file to anyone.
