# Chapter 29.6 — The editorial round-trip

The DOCX round-trip, from a manuscript to an editor and back.

## What's here

- `manuscript.md` — a short manuscript, ready to convert
- `metadata.yaml` — so the conversion doesn't ask you for a title
- `chapter-01-original.md` — the chapter as it stood before the round, kept
  separately so you can compare at the end

## Prerequisites

Pandoc. Chapter 25.2 installs it; `pandoc --version` confirms it.

## The steps

**First, set up.**

On **macOS**, **Linux**, and **Windows Git Bash**:

```
cp -r exercises/ch29-editorial-round ~/editorial-round
cd ~/editorial-round
git init
git add .
git commit -m "Starting point for editorial round exercise"
git tag -a v03-sent-to-editor -m "Exercise: simulated send to editor"
```

On **Windows PowerShell**:

```
Copy-Item -Recurse exercises/ch29-editorial-round $HOME\editorial-round
Set-Location $HOME\editorial-round
git init
git add .
git commit -m "Starting point for editorial round exercise"
git tag -a v03-sent-to-editor -m "Exercise: simulated send to editor"
```

**Second, build the file you'd send.**

```
pandoc manuscript.md -o sent.docx --metadata-file=metadata.yaml
```

**Third, pretend it came back edited.** Open `sent.docx` in Word. Turn on
Track Changes. Make three edits — change a word, delete a sentence, add a
sentence — and add one comment. Save as `returned.docx`.

**Fourth, work through it.** Accept two of the changes, reject one, reply to
the comment. Then **Accept All Changes** to close anything remaining, and delete
the comments. Save as `accepted.docx`.

**Fifth, convert back.**

```
pandoc accepted.docx -o accepted.md --wrap=none
```

**Sixth, compare.** Chapter 29.4's review step:

```
git diff --no-index --color-words chapter-01-original.md accepted.md
```

You should see your two accepted changes, word by word, and nothing else — no
reflowed paragraphs, no escaped characters. **If the whole file shows as
changed, you omitted `--wrap=none`.**

**Seventh, commit and tag the result.**

```
git add .
git commit -m "Accept simulated dev edit; three changes in Ch. 1"
git tag -a v04-after-dev-edit -m "Exercise: simulated round complete"
```

**Eighth, read the round from outside.**

```
git diff v03-sent-to-editor..v04-after-dev-edit
```

The whole round in one command: what the manuscript was when you sent it, and
what it is now.
