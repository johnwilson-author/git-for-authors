# Ready-made files

Standalone copies of the files from **Appendix D**.

## Why these exist when the templates already contain them

The templates in `templates/` include working copies of all of these, so a
template works out of the box. This folder is for the reader who wants **one
file** without taking a whole template — a `.gitignore` for a project that
already exists, a commit-message template to drop into `~/.gitmessage`, an
issue template for a launch.

The duplication is deliberate and it's the one exception to Chapter 23.3's
"one of everything" rule: a template has to be complete to be useful, and a
file library has to be separate to be grabbable.

## Contents

| File | What it is | Chapter |
|---|---|---|
| `gitignore.annotated` | The writer's `.gitignore`, fully commented | 10.3 |
| `.gitmessage` | A commit-message template | 7.2 |
| `README.starter.md` | A starter `README.md` for a book repository | 40.2 |
| `issue-templates/` | Five issue templates: ARC send, promo, launch admin, announcement, continuity | 19.2, 35.6 |

## How to use them

**`.gitignore`** — copy `gitignore.annotated` into your project as `.gitignore`
and delete the comments you don't want. Git ignores `#` lines, so you can leave
them in.

**Commit-message template** — copy `.gitmessage` to your home folder and point
Git at it:

```
git config --global commit.template ~/.gitmessage
```

On Windows, `~` resolves in Git Bash; in PowerShell use `$HOME\.gitmessage`.

**Issue templates** — copy the folder into your repository:

On **macOS**, **Linux**, and **Windows Git Bash**:

```
cp -r ready-made/issue-templates/* .github/ISSUE_TEMPLATE/
```

On **Windows PowerShell**:

```
Copy-Item -Recurse ready-made/issue-templates/* .github/ISSUE_TEMPLATE/
```

Create `.github/ISSUE_TEMPLATE/` first if it doesn't exist.
