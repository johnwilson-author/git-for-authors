# Chapter 14.5 — Park and retrieve

Stashing, without a manuscript to lose.

## What's here

`chapter-one.md` and `chapter-two.md`, both clean, both ready to be dirtied.

## The steps

**First, copy and initialise.**

On **macOS**, **Linux**, and **Windows Git Bash**:

```
cp -r exercises/ch14-stash ~/stash-practice
cd ~/stash-practice
git init
git add .
git commit -m "Starting point for stash exercise"
```

On **Windows PowerShell**:

```
Copy-Item -Recurse exercises/ch14-stash $HOME\stash-practice
Set-Location $HOME\stash-practice
git init
git add .
git commit -m "Starting point for stash exercise"
```

**Second, make some uncommitted work.** Add a sentence to `chapter-one.md` and
create a new file, `chapter-three.md`, with a line in it. Don't commit either.

```
git status
```

`chapter-one.md` modified, `chapter-three.md` untracked.

**Third, park it.**

```
git stash push -u -m "Exercise: half-work on chapters one and three"
git status
```

Working tree clean. Open `chapter-one.md` — the sentence is gone.
`chapter-three.md` has vanished from the folder.

**Fourth, look inside without retrieving.**

```
git stash list
git stash show -p "stash@{0}"
```

On Git Bash, macOS, and Linux, single quotes are equally safe:
`git stash show -p 'stash@{0}'`.

**Fifth, retrieve it with `apply`, not `pop`.**

```
git stash apply
git status
```

Both files back. Then delete the stash deliberately:

```
git stash drop
git stash list
```

Empty. That's the cycle: park, inspect, restore, verify, drop.

## The trap, demonstrated

Park something again with `git stash push -m "test"`. Then commit a change, and
commit another. At no point does any command tell you the stash exists. Run
`git stash list` and there it is, unchanged, waiting.

That's Chapter 14.4's lost-stash problem, and nothing will remind you.
