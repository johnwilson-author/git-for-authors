# Chapter 8.6 — Find the paragraph you cut

Search, recovery, and word-level diffs. Chapter 8 teaches the commands; this is
a repository you can search without having to write a novel first.

## What's here

`chapter-one.md` is a working file with a paragraph about an innkeeper in it.
The exercise is to cut the paragraph, commit the cut, and then find it again.

## The steps

**First, set up.** Copy the folder and initialise:

On **macOS**, **Linux**, and **Windows Git Bash**:

```
cp -r exercises/ch08-find-the-paragraph ~/find-the-paragraph
cd ~/find-the-paragraph
git init
```

On **Windows PowerShell**:

```
Copy-Item -Recurse exercises/ch08-find-the-paragraph $HOME\find-the-paragraph
Set-Location $HOME\find-the-paragraph
git init
```

**Second, commit the file as it is.**

```
git add .
git commit -m "Add paragraph about the innkeeper to Ch. 1"
```

**Third, cut the paragraph.** Delete the paragraph beginning "The innkeeper
had known her mother" and save. Then:

```
git diff
```

You should see the paragraph removed. Commit the cut:

```
git add .
git commit -m "Cut the innkeeper paragraph; pacing"
```

**Fourth, find it.** Use the pickaxe with a phrase you remember:

On **macOS**, **Linux**, and **Windows Git Bash**:

```
git log --oneline -S 'innkeeper'
```

On **Windows PowerShell**:

```
git log --oneline -S "innkeeper"
```

Two commits come back: the one that added it and the one that removed it.

**Fifth, read the version before the cut.** Copy the hash of the *adding*
commit and run:

```
git show <hash>:chapter-one.md
```

There's the paragraph, dated, in the version it was committed in.

**Sixth, see the exact change.** On the *removing* commit:

```
git show <hash> -- chapter-one.md
```

And the word-level view of the whole thing:

```
git diff --color-words HEAD~2 HEAD -- chapter-one.md
```

## What this exercise proves

Chapter 1's fourth audit question — "if you needed the paragraph you cut three
months ago, which file is it in?" — has a new answer: no file. It's in a
commit.
