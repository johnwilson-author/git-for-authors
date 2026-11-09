# Sample books

Two short books, fully structured, so you can see a working layout before
building your own.

| Sample | What it demonstrates |
|---|---|
| `sample-novel/` | The novel template with real content: one file per chapter, headings only, scene breaks, an HTML comment, a notes folder, a working `metadata.yaml` |
| `sample-nonfiction/` | The non-fiction template with real content: per-chapter front matter, a sources file, a figures list, a git-ignored research folder |

Both are deliberately short — three chapters and two chapters. The point is the
*structure*, not the prose.

## Using them

**Read them first.** Open the files in your editor, then run the build script
in the sample folder and look at the DOCX and EPUB it produces. That's the
fastest way to see what Part V's pipeline actually does.

**Then copy the structure.** Chapter 40.1's three approaches apply: copy and
strip the history, adapt the files, or use the sample as a map while you build
your own.

## The build

Both samples build without modification, except that they have no cover image
and no `reference.docx`. The build scripts handle both:

```
cd samples/sample-novel
./build.sh
```

On PowerShell:

```
cd samples\sample-novel
.\build.ps1
```

The DOCX will use Pandoc's default styles, which is what Chapter 25.6 explains
how to fix.
