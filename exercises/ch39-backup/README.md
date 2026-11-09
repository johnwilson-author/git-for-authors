# Chapter 39.6 — Bundle, restore, and build

The backup exercise, with something worth backing up.

## What's here

- `chapters/01.md`, `chapters/02.md` — a small manuscript
- `metadata.yaml` — so the build works
- `build.sh` and `build.ps1` — the export script from Chapter 25.7

## The steps

**First, set up and commit.**

On **macOS**, **Linux**, and **Windows Git Bash**:

```
cp -r exercises/ch39-backup ~/backup-practice
cd ~/backup-practice
git init
git add .
git commit -m "Starting point for backup exercise"
git tag -a v01-test -m "Exercise: state to back up"
```

On **Windows PowerShell**:

```
Copy-Item -Recurse exercises/ch39-backup $HOME\backup-practice
Set-Location $HOME\backup-practice
git init
git add .
git commit -m "Starting point for backup exercise"
git tag -a v01-test -m "Exercise: state to back up"
```

**Second, make a bundle.**

On **macOS**, **Linux**, and **Windows Git Bash**:

```
git bundle create my-book-$(date +%Y-%m).bundle --all
```

On **Windows PowerShell**:

```
git bundle create "my-book-$(Get-Date -Format 'yyyy-MM').bundle" --all
```

Check the size — kilobytes, not zero.

**Third, restore from it, somewhere else.**

```
cd ..
git clone backup-practice/my-book-2026-11.bundle restored-test
cd restored-test
git log --oneline --graph --all
git tag -n
```

Substitute your bundle's filename. **The tags should be there.** If `git tag -n`
is empty, the bundle was made without `--all` and the tags weren't included —
which is the failure this exercise exists to catch.

**Fourth, read a file from the restored copy.**

```
git show v01-test:chapters/01.md
```

The text, not a pointer, not an empty file.

**Fifth, build in the restored copy.** Copy the build script and metadata if
they weren't included — they were, if they were committed — then:

On **macOS**, **Linux**, and **Windows Git Bash**:

```
./build.sh
```

On **Windows PowerShell**:

```
.\build.ps1
```

If it produces a DOCX and an EPUB, the restore is functionally complete: you
could publish from this copy.

**Sixth, clean up.**

On **macOS** and **Linux**:

```
cd ..
rm -rf restored-test
```

On **Windows PowerShell**:

```
Set-Location ..
Remove-Item -Recurse -Force restored-test
```

## What this exercise proves

That a bundle is a complete backup of the history — commits, branches, and
tags — and that a restore is one command. Chapter 39.4's monthly routine is
this, once a month, plus a note in `notes/backup-log.md`.
