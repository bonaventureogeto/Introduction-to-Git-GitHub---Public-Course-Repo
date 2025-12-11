# 📚 Git Command Reference

A comprehensive reference of Git commands organized by category with syntax, descriptions, common flags, and examples.

## Table of Contents

* [Setup & Configuration](#setup--configuration)
* [Creating & Cloning](#creating--cloning)
* [Snapshotting](#snapshotting)
* [Branching & Merging](#branching--merging)
* [Sharing & Updating](#sharing--updating)
* [Inspection & Comparison](#inspection--comparison)
* [Undoing Changes](#undoing-changes)
* [Stashing](#stashing)
* [Tagging](#tagging)
* [Advanced](#advanced)

---

## Setup & Configuration

### git config

Configure Git settings at global or repository level.

**Syntax:**

```bash
git config [--global|--local|--system] <key> <value>
```

**Common Flags:**

* `--global` - User-level configuration (~/.gitconfig)
* `--local` - Repository-level configuration (.git/config)
* `--system` - System-wide configuration
* `--list` - List all configuration
* `--unset` - Remove a configuration value

**Examples:**

```bash
# Set your identity
git config --global user.name "Jane Doe"
git config --global user.email "jane@example.com"

# Set default editor
git config --global core.editor "code --wait"

# Set default branch name
git config --global init.defaultBranch main

# List all configuration
git config --list

# Get specific value
git config user.name

# Remove configuration
git config --global --unset user.name
```

### git help

Display help information for Git commands.

**Syntax:**

```bash
git help <command>
git <command> --help
```

**Examples:**

```bash
git help commit
git commit --help
git help -a  # List all commands
```

---

## Creating & Cloning

### git init

Initialize a new Git repository.

**Syntax:**

```bash
git init [directory]
```

**Common Flags:**

* `--bare` - Create a bare repository (no working directory)
* `--initial-branch=<name>` - Set the initial branch name

**Examples:**

```bash
# Initialize in current directory
git init

# Initialize new directory
git init my-project

# Initialize with specific branch name
git init --initial-branch=main

# Create bare repository
git init --bare myrepo.git
```

### git clone

Clone a repository from a remote source.

**Syntax:**

```bash
git clone <repository> [directory]
```

**Common Flags:**

* `--branch <name>` or `-b <name>` - Clone specific branch
* `--depth <num>` - Create shallow clone with limited history
* `--single-branch` - Clone only one branch

**Examples:**

```bash
# Clone via HTTPS
git clone https://github.com/user/repo.git

# Clone via SSH
git clone git@github.com:user/repo.git

# Clone into specific directory
git clone https://github.com/user/repo.git my-folder

# Clone specific branch
git clone -b develop https://github.com/user/repo.git

# Shallow clone (last 1 commit)
git clone --depth 1 https://github.com/user/repo.git
```

---

## Snapshotting

### git add

Add files to the staging area.

**Syntax:**

```bash
git add <pathspec>
```

**Common Flags:**

* `-A` or `--all` - Add all changes (new, modified, deleted)
* `-u` or `--update` - Add modified and deleted files only
* `-p` or `--patch` - Interactively stage changes
* `.` - Add all files in current directory

**Examples:**

```bash
# Stage specific file
git add README.md

# Stage all files
git add .
git add -A

# Stage all .js files
git add *.js

# Interactive staging
git add -p

# Stage all files in directory
git add src/

# Stage multiple specific files
git add file1.txt file2.txt file3.txt
```

### git commit

Create a commit from staged changes.

**Syntax:**

```bash
git commit [-m <message>]
```

**Common Flags:**

* `-m <message>` - Commit message inline
* `-a` or `--all` - Automatically stage modified/deleted files
* `--amend` - Modify the last commit
* `-v` or `--verbose` - Show diff in commit message editor
* `--no-edit` - Use previous commit message (with --amend)

**Examples:**

```bash
# Commit with message
git commit -m "Add user authentication"

# Commit all tracked changes
git commit -am "Fix navigation bug"

# Amend last commit
git commit --amend -m "Updated message"

# Amend without changing message
git commit --amend --no-edit

# Verbose commit (shows diff)
git commit -v
```

### git status

Show the working tree status.

**Syntax:**

```bash
git status [options]
```

**Common Flags:**

* `-s` or `--short` - Short format output
* `-b` or `--branch` - Show branch information
* `--porcelain` - Machine-readable format

**Examples:**

```bash
# Standard status
git status

# Short format
git status -s

# With branch info
git status -b
```

**Status Codes (short format):**

```text
M  = Modified
A  = Added (staged)
D  = Deleted
R  = Renamed
?? = Untracked
```

### git diff

Show changes between commits, commit and working tree, etc.

**Syntax:**

```bash
git diff [options] [<commit>] [--] [<path>]
```

**Common Flags:**

* `--staged` or `--cached` - Show staged changes
* `--stat` - Show statistics only
* `--name-only` - Show only file names
* `--color-words` - Highlight changed words

**Examples:**

```bash
# Show unstaged changes
git diff

# Show staged changes
git diff --staged

# Compare branches
git diff main..feature

# Compare commits
git diff abc123 def456

# Show statistics
git diff --stat

# Compare specific file
git diff HEAD -- file.txt

# Show changes for specific file
git diff main feature -- index.html
```

### git rm

Remove files from working tree and index.

**Syntax:**

```bash
git rm <file>
```

**Common Flags:**

* `-f` or `--force` - Force removal
* `-r` - Recursive (for directories)
* `--cached` - Remove from index only (keep in working directory)

**Examples:**

```bash
# Remove file from Git and filesystem
git rm oldfile.txt

# Remove from Git but keep file
git rm --cached secrets.txt

# Remove directory
git rm -r old-folder/

# Force remove modified file
git rm -f file.txt
```

### git mv

Move or rename files.

**Syntax:**

```bash
git mv <source> <destination>
```

**Examples:**

```bash
# Rename file
git mv oldname.txt newname.txt

# Move file to directory
git mv file.txt directory/

# Move and rename
git mv src/old.js lib/new.js
```

---

## Branching & Merging

### git branch

List, create, or delete branches.

**Syntax:**

```bash
git branch [options] [<branch-name>]
```

**Common Flags:**

* `-a` or `--all` - List all branches (local and remote)
* `-d` - Delete branch (safe)
* `-D` - Force delete branch
* `-m` - Rename branch
* `-r` - List remote branches

**Examples:**

```bash
# List local branches
git branch

# List all branches
git branch -a

# Create new branch
git branch feature-login

# Delete branch
git branch -d old-feature

# Force delete
git branch -D unmerged-feature

# Rename current branch
git branch -m new-name

# Rename specific branch
git branch -m old-name new-name

# List remote branches
git branch -r
```

### git checkout

Switch branches or restore files.

**Syntax:**

```bash
git checkout <branch-or-commit>
git checkout -b <new-branch>
```

**Common Flags:**

* `-b` - Create and switch to new branch
* `-B` - Create/reset and switch to branch
* `--track` - Set up tracking branch

**Examples:**

```bash
# Switch to existing branch
git checkout main

# Create and switch to new branch
git checkout -b feature-auth

# Switch to specific commit (detached HEAD)
git checkout a1b2c3d

# Restore specific file from last commit
git checkout -- file.txt

# Switch to remote branch
git checkout -b local-name origin/remote-branch
```

### git switch

Switch branches (newer alternative to checkout).

**Syntax:**

```bash
git switch <branch>
git switch -c <new-branch>
```

**Common Flags:**

* `-c` or `--create` - Create and switch to new branch
* `-C` - Force create and switch

**Examples:**

```bash
# Switch to branch
git switch main

# Create and switch
git switch -c feature-new

# Switch to previous branch
git switch -

# Switch to remote branch
git switch feature-remote
```

### git merge

Merge branches together.

**Syntax:**

```bash
git merge <branch>
```

**Common Flags:**

* `--no-ff` - Create merge commit even if fast-forward is possible
* `--ff-only` - Only allow fast-forward merges
* `--squash` - Squash all commits into one
* `--abort` - Abort merge and return to pre-merge state

**Examples:**

```bash
# Merge feature into current branch
git merge feature-login

# Merge with merge commit
git merge --no-ff feature-auth

# Abort merge
git merge --abort

# Squash commits
git merge --squash feature-cleanup
```

### git rebase

Reapply commits on top of another base.

**Syntax:**

```bash
git rebase <branch>
```

**Common Flags:**

* `-i` or `--interactive` - Interactive rebase
* `--continue` - Continue after resolving conflicts
* `--abort` - Abort rebase
* `--skip` - Skip current commit

**Examples:**

```bash
# Rebase current branch onto main
git rebase main

# Interactive rebase last 3 commits
git rebase -i HEAD~3

# Continue after resolving conflicts
git rebase --continue

# Abort rebase
git rebase --abort
```

---

## Sharing & Updating

### git remote

Manage remote repositories.

**Syntax:**

```bash
git remote [options] [<name>]
```

**Common Flags:**

* `-v` or `--verbose` - Show URLs
* `add <name> <url>` - Add new remote
* `remove <name>` - Remove remote
* `rename <old> <new>` - Rename remote
* `set-url <name> <url>` - Change remote URL

**Examples:**

```bash
# List remotes
git remote

# List remotes with URLs
git remote -v

# Add remote
git remote add origin https://github.com/user/repo.git

# Remove remote
git remote remove origin

# Rename remote
git remote rename origin upstream

# Change remote URL
git remote set-url origin https://github.com/user/newrepo.git

# Show remote details
git remote show origin
```

### git fetch

Download objects and refs from remote.

**Syntax:**

```bash
git fetch [remote] [branch]
```

**Common Flags:**

* `--all` - Fetch all remotes
* `--prune` or `-p` - Remove deleted remote branches
* `--tags` - Fetch all tags

**Examples:**

```bash
# Fetch from origin
git fetch origin

# Fetch specific branch
git fetch origin main

# Fetch all remotes
git fetch --all

# Fetch and prune
git fetch --prune

# Fetch tags
git fetch --tags
```

### git pull

Fetch and integrate with another repository or branch.

**Syntax:**

```bash
git pull [remote] [branch]
```

**Common Flags:**

* `--rebase` or `-r` - Rebase instead of merge
* `--no-rebase` - Merge (default)
* `--ff-only` - Only fast-forward

**Examples:**

```bash
# Pull from current tracking branch
git pull

# Pull from specific remote/branch
git pull origin main

# Pull with rebase
git pull --rebase

# Pull with fast-forward only
git pull --ff-only
```

### git push

Update remote refs along with associated objects.

**Syntax:**

```bash
git push [remote] [branch]
```

**Common Flags:**

* `-u` or `--set-upstream` - Set upstream for tracking
* `-f` or `--force` - Force push (dangerous!)
* `--all` - Push all branches
* `--tags` - Push all tags
* `--delete` - Delete remote branch

**Examples:**

```bash
# Push to current tracking branch
git push

# Push and set upstream
git push -u origin feature-auth

# Push specific branch
git push origin main

# Push all branches
git push --all origin

# Push tags
git push --tags

# Delete remote branch
git push origin --delete old-feature

# Force push (use with caution!)
git push --force
```

---

## Inspection & Comparison

### git log

Show commit logs.

**Syntax:**

```bash
git log [options]
```

**Common Flags:**

* `--oneline` - One commit per line
* `--graph` - Show graph visualization
* `--all` - Show all branches
* `-n <number>` - Show last n commits
* `--author=<pattern>` - Filter by author
* `--since=<date>` - Commits since date
* `--stat` - Show file statistics

**Examples:**

```bash
# Standard log
git log

# Compact view
git log --oneline

# With graph
git log --oneline --graph --all

# Last 5 commits
git log -5

# By author
git log --author="Jane"

# Since date
git log --since="2 weeks ago"

# With file changes
git log --stat

# Search commit messages
git log --grep="bug fix"

# Show commits affecting file
git log -- path/to/file.txt
```

### git show

Show various types of objects (commits, tags, etc.).

**Syntax:**

```bash
git show [object]
```

**Examples:**

```bash
# Show last commit
git show

# Show specific commit
git show a1b2c3d

# Show file from specific commit
git show HEAD:file.txt

# Show tag
git show v1.0.0
```

### git blame

Show what revision and author last modified each line.

**Syntax:**

```bash
git blame <file>
```

**Common Flags:**

* `-L <start>,<end>` - Limit to line range
* `-e` - Show email instead of name

**Examples:**

```bash
# Blame entire file
git blame file.txt

# Blame specific lines
git blame -L 10,20 file.txt

# Show emails
git blame -e file.txt
```

---

## Undoing Changes

### git reset

Reset current HEAD to specified state.

**Syntax:**

```bash
git reset [mode] [commit]
```

**Modes:**

* `--soft` - Keep changes in staging area
* `--mixed` (default) - Keep changes in working directory
* `--hard` - Discard all changes

**Examples:**

```bash
# Unstage file (keep changes)
git reset HEAD file.txt

# Undo last commit (keep changes)
git reset HEAD~1

# Undo last commit (keep staged)
git reset --soft HEAD~1

# Undo last commit (discard changes)
git reset --hard HEAD~1

# Reset to specific commit
git reset --hard a1b2c3d
```

### git revert

Create new commit that undoes previous commit.

**Syntax:**

```bash
git revert <commit>
```

**Common Flags:**

* `-n` or `--no-commit` - Don't auto-commit
* `--abort` - Cancel revert

**Examples:**

```bash
# Revert last commit
git revert HEAD

# Revert specific commit
git revert a1b2c3d

# Revert without committing
git revert -n HEAD

# Revert range of commits
git revert HEAD~3..HEAD
```

### git restore

Restore working tree files (Git 2.23+).

**Syntax:**

```bash
git restore [options] <file>
```

**Common Flags:**

* `--staged` - Unstage files
* `--source=<commit>` - Restore from specific commit

**Examples:**

```bash
# Discard changes in file
git restore file.txt

# Unstage file
git restore --staged file.txt

# Restore from specific commit
git restore --source=HEAD~1 file.txt
```

### git clean

Remove untracked files from working tree.

**Syntax:**

```bash
git clean [options]
```

**Common Flags:**

* `-f` - Force (required)
* `-d` - Remove directories
* `-n` - Dry run (show what would be deleted)
* `-x` - Remove ignored files too

**Examples:**

```bash
# Dry run
git clean -n

# Remove untracked files
git clean -f

# Remove untracked files and directories
git clean -fd

# Remove ignored files too
git clean -fxd
```

---

## Stashing

### git stash

Stash changes in working directory.

**Syntax:**

```bash
git stash [push|pop|list|apply|drop|clear]
```

**Common Commands:**

* `push` - Save changes (default)
* `pop` - Apply and remove latest stash
* `apply` - Apply without removing
* `list` - List all stashes
* `drop` - Delete stash
* `clear` - Remove all stashes

**Examples:**

```bash
# Stash changes
git stash
git stash push -m "Work in progress"

# List stashes
git stash list

# Apply latest stash
git stash pop

# Apply without removing
git stash apply

# Apply specific stash
git stash apply stash@{2}

# Drop stash
git stash drop stash@{0}

# Clear all stashes
git stash clear

# Stash including untracked files
git stash -u
```

---

## Tagging

### git tag

Create, list, or delete tags.

**Syntax:**

```bash
git tag [options] [<tagname>]
```

**Common Flags:**

* `-a` - Create annotated tag
* `-m <message>` - Tag message
* `-d` - Delete tag
* `-l` - List tags

**Examples:**

```bash
# List tags
git tag

# Create lightweight tag
git tag v1.0.0

# Create annotated tag
git tag -a v1.0.0 -m "Release version 1.0.0"

# Tag specific commit
git tag v0.9.0 a1b2c3d

# Delete tag
git tag -d v1.0.0

# Push tag to remote
git push origin v1.0.0

# Push all tags
git push --tags

# Delete remote tag
git push origin --delete v1.0.0
```

---

## Advanced

### git cherry-pick

Apply changes from specific commits.

**Syntax:**

```bash
git cherry-pick <commit>
```

**Examples:**

```bash
# Cherry-pick single commit
git cherry-pick a1b2c3d

# Cherry-pick range
git cherry-pick abc123..def456

# Cherry-pick without committing
git cherry-pick -n a1b2c3d
```

### git reflog

Show reference logs (history of HEAD).

**Syntax:**

```bash
git reflog
```

**Examples:**

```bash
# Show reflog
git reflog

# Reset to previous state
git reset --hard HEAD@{2}
```

### git bisect

Use binary search to find bug-introducing commit.

**Syntax:**

```bash
git bisect <start|good|bad|reset>
```

**Examples:**

```bash
# Start bisect
git bisect start

# Mark current as bad
git bisect bad

# Mark specific commit as good
git bisect good a1b2c3d

# Test each commit, mark good/bad
git bisect good   # or bad

# End bisect
git bisect reset
```

---

## Quick Reference Table

| Category | Command | Purpose |
|----------|---------|---------|
| **Setup** | `git config` | Configure settings |
| **Setup** | `git init` | Initialize repository |
| **Setup** | `git clone` | Clone repository |
| **Basic** | `git add` | Stage changes |
| **Basic** | `git commit` | Save changes |
| **Basic** | `git status` | Check status |
| **Basic** | `git diff` | View differences |
| **Branch** | `git branch` | Manage branches |
| **Branch** | `git checkout` | Switch branches |
| **Branch** | `git merge` | Combine branches |
| **Remote** | `git fetch` | Download updates |
| **Remote** | `git pull` | Fetch and merge |
| **Remote** | `git push` | Upload changes |
| **History** | `git log` | View history |
| **Undo** | `git reset` | Undo commits |
| **Undo** | `git revert` | Reverse commit |

---

## Command Aliases

Create shortcuts for common commands:

```bash
# Add aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual 'log --oneline --graph --all'

# Use aliases
git co main
git st
git visual
```

---

## Related Resources

* [Official Git Documentation](https://git-scm.com/docs)
* [Pro Git Book](https://git-scm.com/book/en/v2)
* [Git Cheat Sheet](../cheatsheets/git-basics.md)
