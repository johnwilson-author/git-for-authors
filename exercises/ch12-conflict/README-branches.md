# Reproducing the conflict from scratch

Chapter 12.7's full exercise. This is how the conflicted file in this folder was
made.

All the Git commands are identical on Windows PowerShell, Windows Git Bash,
macOS, and Linux. File creation is the only place platforms differ.

## 1. Start clean

```
git status
```

If you have uncommitted changes, commit them. You want "working tree clean."

## 2. Establish the paragraph on `main`

`chapter-one.md` should contain:

```
Marta closed the door behind her and stood for a moment in the hall,
listening to the house settle.
```

```
git add .
git commit -m "Set up paragraph for conflict exercise"
```

## 3. Change it on a branch

```
git switch -c alt-ending
```

Edit the paragraph to:

```
Marta shut the door and waited in the hall, hearing the house
shift around her.
```

```
git add .
git commit -m "Rewrite paragraph on branch"
```

## 4. Change it differently on `main`

```
git switch main
```

Edit the paragraph to:

```
Marta closed the door and stood in the hallway, listening to the
old house settle around her.
```

```
git add .
git commit -m "Revise paragraph on main"
```

## 5. Merge, and meet the conflict

```
git merge alt-ending
```

You should see:

```
Auto-merging chapter-one.md
CONFLICT (content): Merge conflict in chapter-one.md
Automatic merge failed; fix conflicts and then commit the result.
```

```
git status
```

"You have unmerged paths" and `both modified: chapter-one.md`.

## 6. Resolve it

Open the file. You'll see the markers. Edit to the version you want, delete all
three marker lines, then:

```
git add chapter-one.md
git commit -m "Merge alt-ending; combine paragraph revisions"
```

## 7. Rehearse the abort

Do it again — change the paragraph on both branches, run `git merge`, then:

```
git merge --abort
git status
```

Everything back where it was. Nothing lost. Worth doing once, while the merge
is trivial, so `--abort` is a familiar tool rather than an emergency measure
you've never tested.
