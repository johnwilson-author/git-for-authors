# Chapter 12.7 — Create and resolve a conflict

This folder contains a **deliberately conflicted file** — a snapshot of the
state Git leaves behind when two branches changed the same lines.

Chapter 12.7 walks you through *creating* this conflict from scratch. This
folder is for the reader who'd rather start from the conflicted state and
practise resolving it.

## What's here

`chapter-one.md` contains real conflict markers:

```
<<<<<<< HEAD
your version
=======
their version
>>>>>>> alt-ending
```

`README-branches.md` explains how to reproduce the conflict properly if you
want the full exercise, including the merge.

## The quick version: resolve it

**First, copy the folder and initialise.**

On **macOS**, **Linux**, and **Windows Git Bash**:

```
cp -r exercises/ch12-conflict ~/conflict-practice
cd ~/conflict-practice
git init
```

On **Windows PowerShell**:

```
Copy-Item -Recurse exercises/ch12-conflict $HOME\conflict-practice
Set-Location $HOME\conflict-practice
git init
```

**Second, commit the conflicted file.** Git will let you — it's just text.

```
git add .
git commit -m "Conflicted file, to resolve"
```

**Third, read the markers.** Open `chapter-one.md`. You'll see the sandwich from
Chapter 12.4: `HEAD`'s version on top, the divider, `alt-ending`'s version on
the bottom.

**Fourth, resolve it.** Write a third version — combine them, take one, or write
something new. Delete all three marker lines.

**Fifth, check that no markers survive.**

On **macOS**, **Linux**, and **Windows Git Bash**:

```
grep -n "<<<<<<<" chapter-one.md
```

On **Windows PowerShell**:

```
Select-String -Path chapter-one.md -Pattern "<<<<<<<"
```

Both should return nothing.

**Sixth, stage and commit.**

```
git add chapter-one.md
git commit -m "Resolve conflict; combine paragraph revisions"
```

That's the whole procedure. In a real merge, the commit completes the merge and
you never run `git add` on anything Git resolved itself.

## The full version

`README-branches.md` has the commands to build this conflict from scratch, with
the two branches, the merge, and `git merge --abort`.
