# Generating `reference.docx`

The reference document is the Word file whose styles Pandoc applies to your
DOCX export. Chapter 25.6 explains what it is and how to edit it.

It is a binary file and is not shipped in this repository (Chapter 10.2).
Generate it once, in your book's folder.

## Generate the default

On **macOS**, **Linux**, and **Windows Git Bash**:

```
pandoc --print-default-data-file reference.docx > reference.docx
```

On **Windows PowerShell**, use `-o` rather than redirection, because
PowerShell's `>` can write an encoding that confuses Pandoc:

```
pandoc --print-default-data-file reference.docx -o reference.docx
```

## Edit it

Open `reference.docx` in Word. You'll see a page of sample text. Each piece is
styled, and **editing the style is what changes your output** — editing the
text does nothing.

In Word: **Home → Styles**, right-click a style, choose **Modify**.

Two that matter most:

- **Normal** — a readable serif at 12 point, line spacing 1.5, no space after
  paragraphs, first-line indent 0.5 cm. That's the standard submission format.
- **Heading 1** — your chapter titles. Centred or left-aligned, larger than
  the body, with space before.

## Commit it

```
git add reference.docx
git commit -m "Add reference document with manuscript styles"
```

`.gitignore` excludes `*.docx` and makes an exception for `reference.docx`, so
this is the one Word file that belongs in the repository.
