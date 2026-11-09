# Build DOCX and EPUB from the Markdown source.
# Chapter 25.7. Run from the repository root.

$ErrorActionPreference = "Stop"

New-Item -ItemType Directory -Path exports -Force | Out-Null

# Concatenate chapters in order. -Encoding utf8 preserves curly quotes.
Get-Content chapters/*.md | Set-Content manuscript.md -Encoding utf8

# ── DOCX for editors ─────────────────────────────────────────
$docxArgs = @(
    "manuscript.md",
    "-o", "exports/manuscript.docx",
    "--metadata-file=metadata.yaml",
    "--toc", "--toc-depth=2"
)

if (Test-Path "reference.docx") {
    $docxArgs += "--reference-doc=reference.docx"
} else {
    Write-Output "note: no reference.docx - using Pandoc's default styles (see make-reference.md)"
}

pandoc @docxArgs

# ── EPUB for readers ─────────────────────────────────────────
$epubArgs = @(
    "manuscript.md",
    "-o", "exports/manuscript.epub",
    "--metadata-file=metadata.yaml",
    "--split-level=2", "--toc-depth=2"
)

foreach ($cover in @("assets/cover-ebook.jpg", "assets/cover.jpg")) {
    if (Test-Path $cover) {
        $epubArgs += "--epub-cover-image=$cover"
        break
    }
}

pandoc @epubArgs

Write-Output "Built exports/manuscript.docx and exports/manuscript.epub"
