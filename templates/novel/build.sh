#!/usr/bin/env bash
# Build DOCX and EPUB from the Markdown source.
# Chapter 25.7. Run from the repository root.
set -euo pipefail

mkdir -p exports

# Concatenate chapters in order. Zero-padded filenames make this correct.
cat chapters/*.md > manuscript.md

# ── DOCX for editors ─────────────────────────────────────────
docx_args=(manuscript.md -o exports/manuscript.docx --metadata-file=metadata.yaml)

if [ -f reference.docx ]; then
  docx_args+=(--reference-doc=reference.docx)
else
  echo "note: no reference.docx — using Pandoc's default styles (see make-reference.md)"
fi

docx_args+=(--toc --toc-depth=2)
pandoc "${docx_args[@]}"

# ── EPUB for readers ─────────────────────────────────────────
epub_args=(manuscript.md -o exports/manuscript.epub --metadata-file=metadata.yaml)

for cover in assets/cover-ebook.jpg assets/cover.jpg; do
  if [ -f "$cover" ]; then
    epub_args+=(--epub-cover-image="$cover")
    break
  fi
done

epub_args+=(--split-level=2 --toc-depth=2)
pandoc "${epub_args[@]}"

echo "Built exports/manuscript.docx and exports/manuscript.epub"
