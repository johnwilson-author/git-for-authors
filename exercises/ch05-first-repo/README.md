# Chapter 5.6 — Three commits in five minutes

The five-minute walkthrough. Chapter 5 explains what each command does; this is
the starting file.

## The file

`chapter-one.md` contains one sentence. That's all you need.

## The steps

**First, create the folder and the file.** Copy `chapter-one.md` into a new
folder:

On **macOS**, **Linux**, and **Windows Git Bash**:

```
mkdir my-book
cp exercises/ch05-first-repo/chapter-one.md my-book/
cd my-book
```

On **Windows PowerShell**:

```
New-Item -ItemType Directory -Path my-book
Copy-Item exercises/ch05-first-repo/chapter-one.md my-book/
Set-Location my-book
```

**Second, initialise.**

```
git init
git status
```

**Third, commit.**

```
git add chapter-one.md
git commit -m "First commit: opening line of Chapter 1"
git status
```

**Fourth, read it back.**

```
git log
git log --oneline
```

**Fifth, the three-commit exercise.** Change the file three times, committing
each. Chapter 5.6 gives the messages.

**Sixth, ask it a question.**

```
git log --oneline -- chapter-one.md
git diff HEAD~2 HEAD -- chapter-one.md
```

That last command is the whole point of the exercise: an exact answer to "what
changed between two states of my manuscript."

## If something goes wrong

Chapter 5.3's troubleshooting note covers the two common cases — the editor
opening unexpectedly, and a missing identity.
