# 📖 Git & GitHub Glossary

A comprehensive reference of Git and GitHub terminology for beginners.

## A

### Add

The act of staging changes for commit using `git add`. Moves files from the working directory to the staging area.

**Example:**

```bash
git add myfile.txt  # Stage a specific file
git add .           # Stage all changes
```

### Amend

Modify the most recent commit by adding new changes or changing the commit message.

**Example:**

```bash
git commit --amend -m "Updated commit message"
```

## B

### Branch

A parallel version of your repository. Branches allow you to work on features independently without affecting the main codebase.

**Example:**

```bash
git branch feature-login    # Create a new branch
git checkout feature-login  # Switch to that branch
```

**Visualization:**

```text
main:      A---B---C
                \
feature:         D---E
```

### Bare Repository

A repository without a working directory, typically used as a central server repository.

**Example:**

```bash
git init --bare myrepo.git
```

## C

### Checkout

Switch between different branches or restore files from a specific commit.

**Example:**

```bash
git checkout main          # Switch to main branch
git checkout -b new-branch # Create and switch to new branch
```

### Clone

Create a local copy of a remote repository on your computer.

**Example:**

```bash
git clone https://github.com/user/repo.git
```

### Commit

A snapshot of your repository at a specific point in time. Each commit has a unique ID (SHA hash).

**Example:**

```bash
git commit -m "Add user authentication"
```

**Structure:**

```text
Commit: a1b2c3d4e5f6
Author: Jane Doe
Date: 2025-01-15
Message: Add user authentication
Parent: f6e5d4c3b2a1
Tree: [snapshot of all files]
```

### Commit Hash (SHA)

A unique 40-character identifier for each commit, usually abbreviated to 7 characters.

**Example:** `a1b2c3d` or full: `a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6q7r8s9t0`

### Conflict

Occurs when Git cannot automatically merge changes because two branches modified the same lines of code.

**Example:**

```text
<<<<<<< HEAD
const name = "Alice";
=======
const name = "Bob";
>>>>>>> feature-branch
```

## D

### Detached HEAD

A state where HEAD points to a specific commit instead of a branch.

**Example:**

```bash
git checkout a1b2c3d  # Now in detached HEAD state
```

### Diff

Shows the differences between commits, branches, or files.

**Example:**

```bash
git diff              # Show unstaged changes
git diff --staged     # Show staged changes
git diff main..feature # Compare two branches
```

## F

### Fetch

Download changes from a remote repository without merging them into your local branch.

**Example:**

```bash
git fetch origin
```

**Difference from pull:**

```text
fetch: origin/main → local cache (no merge)
pull:  origin/main → local cache → auto-merge to local branch
```

### Fork

A personal copy of someone else's repository on GitHub. Allows you to experiment without affecting the original project.

**Example:** Click "Fork" button on GitHub repository page.

## G

### .git Directory

The hidden folder that contains all of Git's internal data, including commits, branches, and configuration.

**Contents:**

```text
.git/
├── objects/    # All commits and file contents
├── refs/       # Branch and tag pointers
├── HEAD        # Current branch pointer
├── config      # Repository configuration
└── index       # Staging area
```

### .gitignore

A file that tells Git which files or directories to ignore and not track.

**Example:**

```text
# .gitignore
node_modules/
.env
*.log
.DS_Store
__pycache__/
```

## H

### HEAD

A pointer to the current branch and commit you're working on.

**Example:**

```bash
git log HEAD      # Show current commit
git reset HEAD~1  # Move HEAD back one commit
```

### Hook

Scripts that run automatically at certain points in Git's execution (e.g., before commit, after push).

**Example locations:**

```text
.git/hooks/
├── pre-commit
├── post-commit
├── pre-push
└── post-merge
```

## I

### Index

Another name for the staging area. Contains the changes that will be included in the next commit.

**Commands:**

```bash
git add file.txt       # Add to index
git reset HEAD file.txt # Remove from index
```

### Issue

A GitHub feature for tracking bugs, enhancements, and tasks. Issues can be assigned, labeled, and referenced in commits.

**Example:** `#42` references issue number 42

## L

### Log

A history of commits in your repository.

**Example:**

```bash
git log                    # Full log
git log --oneline          # Compact view
git log --graph --all      # Visual branch history
git log --author="Jane"    # Filter by author
```

## M

### Main/Master

The default primary branch in a repository. Historically called "master", now commonly "main".

**Example:**

```bash
git branch -M main  # Rename current branch to main
```

### Merge

Combine changes from one branch into another.

**Example:**

```bash
git checkout main
git merge feature-branch
```

**Types:**
* **Fast-forward**: Simply moves the branch pointer forward
* **Three-way merge**: Creates a new merge commit

### Merge Conflict

See **Conflict**

## O

### Origin

The default name Git gives to the remote repository you cloned from.

**Example:**

```bash
git remote -v
# origin  https://github.com/user/repo.git (fetch)
# origin  https://github.com/user/repo.git (push)
```

## P

### Pull

Fetch changes from a remote repository and merge them into your current branch.

**Example:**

```bash
git pull origin main  # Fetch and merge changes from origin/main
```

**Equivalent to:**

```bash
git fetch origin
git merge origin/main
```

### Pull Request (PR)

A GitHub feature that lets you propose changes to a repository. Allows code review before merging.

**Workflow:**

```text
1. Fork repository
2. Create feature branch
3. Make changes and commit
4. Push branch to your fork
5. Open Pull Request
6. Code review and discussion
7. Merge (if approved)
```

### Push

Upload your local commits to a remote repository.

**Example:**

```bash
git push origin main           # Push to origin's main branch
git push -u origin feature     # Push and set upstream
git push --force               # Force push (dangerous!)
```

## R

### Rebase

Reapply commits on top of another branch. Creates a linear history.

**Example:**

```bash
git checkout feature
git rebase main
```

**Before rebase:**

```text
main:    A---B---C
              \
feature:       D---E
```

**After rebase:**

```text
main:    A---B---C
                  \
feature:           D'---E'
```

### Remote

A version of your repository hosted on a server (like GitHub, GitLab, or Bitbucket).

**Example:**

```bash
git remote add origin https://github.com/user/repo.git
git remote -v                  # List remotes
git remote remove origin       # Remove remote
```

### Repository (Repo)

A project tracked by Git, containing all files, history, and branches.

**Types:**
* **Local repository**: On your computer
* **Remote repository**: On a server (GitHub)

### Reset

Move the current branch to a different commit, optionally modifying the staging area and working directory.

**Example:**

```bash
git reset --soft HEAD~1   # Undo commit, keep changes staged
git reset --mixed HEAD~1  # Undo commit and unstage (default)
git reset --hard HEAD~1   # Undo commit and discard changes
```

### Revert

Create a new commit that undoes changes from a previous commit. Safer than reset for published commits.

**Example:**

```bash
git revert a1b2c3d  # Undo changes from commit a1b2c3d
```

## S

### Staging Area (Index)

An intermediate area where changes are prepared before committing. Acts as a "preview" of your next commit.

**Example:**

```bash
git add file.txt      # Add to staging area
git diff --staged     # View staged changes
git reset HEAD file.txt # Unstage file
```

### Stash

Temporarily save uncommitted changes without committing them.

**Example:**

```bash
git stash              # Save current changes
git stash list         # List all stashes
git stash pop          # Apply and remove latest stash
git stash apply        # Apply without removing
```

**Use case:** Switch branches without committing work-in-progress.

### Status

Show the current state of the working directory and staging area.

**Example:**

```bash
git status
```

**Output shows:**
* Current branch
* Changes staged for commit
* Changes not staged
* Untracked files

## T

### Tag

A named reference to a specific commit, typically used for releases.

**Example:**

```bash
git tag v1.0.0                    # Lightweight tag
git tag -a v1.0.0 -m "Release 1.0" # Annotated tag
git push origin v1.0.0             # Push tag to remote
```

### Tracking Branch

A local branch that has a relationship with a remote branch.

**Example:**

```bash
git branch -u origin/main  # Set upstream tracking
git push -u origin feature # Push and set tracking
```

### Tree

Git's representation of a directory structure at a specific commit.

## U

### Unstage

Remove files from the staging area without discarding changes.

**Example:**

```bash
git reset HEAD file.txt  # Unstage file
git restore --staged file.txt  # New syntax (Git 2.23+)
```

### Upstream

The remote branch that your local branch tracks.

**Example:**

```bash
git branch -u origin/main  # Set upstream to origin/main
git push -u origin feature # Push and set upstream
```

## W

### Working Directory (Working Tree)

The directory on your computer where you edit files. Contains the current checkout of your project.

**Three areas in Git:**

```text
Working Directory → Staging Area → Repository
(edit files)        (git add)      (git commit)
```

## References

* **Commit**: A snapshot with metadata (author, date, message, parent)
* **Branch**: A pointer to a commit that moves forward as you add commits
* **Tag**: A pointer to a commit that doesn't move
* **HEAD**: A pointer to the current branch/commit

## Quick Lookup

| Term | One-Line Definition |
|------|---------------------|
| **Clone** | Copy a remote repository to your local machine |
| **Fork** | Create your own copy of someone's repository on GitHub |
| **Branch** | A parallel version of the code |
| **Commit** | A saved snapshot of your project |
| **Push** | Upload commits to remote repository |
| **Pull** | Download and merge changes from remote |
| **Merge** | Combine two branches |
| **Rebase** | Reapply commits on a different base |
| **Stash** | Temporarily save uncommitted work |
| **Cherry-pick** | Apply a specific commit from one branch to another |

## Related Resources

* [Pro Git Book](https://git-scm.com/book/en/v2)
* [GitHub Glossary](https://docs.github.com/en/get-started/quickstart/github-glossary)
* [Git Reference Manual](https://git-scm.com/docs)
