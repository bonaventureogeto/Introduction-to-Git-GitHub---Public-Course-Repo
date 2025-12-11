# ❓ Frequently Asked Questions (FAQ)

Common questions from beginners learning Git and GitHub.

## Table of Contents

* [Getting Started](#getting-started)
* [Basic Concepts](#basic-concepts)
* [Working with Files](#working-with-files)
* [Branches](#branches)
* [Remote Repositories](#remote-repositories)
* [Collaboration](#collaboration)
* [Troubleshooting](#troubleshooting)
* [Best Practices](#best-practices)

---

## Getting Started

### Q1: What's the difference between Git and GitHub?

**Git** is a version control system (software) that runs on your computer to track changes in your code.

**GitHub** is a cloud-based hosting service for Git repositories, adding features like pull requests, issues, and collaboration tools.

**Analogy:**
* Git = Microsoft Word (the software)
* GitHub = Google Docs / OneDrive (the cloud storage + collaboration)

### Q2: Do I need to use GitHub to use Git?

**No.** Git works perfectly fine locally on your computer without any remote service. GitHub (or alternatives like GitLab, Bitbucket) is optional but highly recommended for:
* Backing up your code
* Collaborating with others
* Showcasing your portfolio
* Contributing to open source

### Q3: Should I use HTTPS or SSH for GitHub?

**For beginners: HTTPS** (easier setup)
* Uses username and personal access token
* No additional configuration needed
* Works through most firewalls

**For experienced users: SSH** (more convenient long-term)
* Requires SSH key setup
* No need to enter credentials repeatedly
* More secure for automated workflows

### Q4: What's a "repository"?

A **repository** (or "repo") is a project folder tracked by Git. It contains:
* Your project files
* The `.git` directory (Git's database)
* Complete history of all changes
* All branches

Think of it as a time machine for your project.

### Q5: Can I use Git without the command line?

**Yes!** There are many GUI tools:
* **GitHub Desktop** (beginner-friendly)
* **GitKraken**
* **SourceTree**
* **VS Code** (built-in Git support)
* **Tower**

However, learning command line is recommended because:
* More powerful and flexible
* Works on any system
* Required for many professional workflows
* GUIs just run CLI commands behind the scenes

---

## Basic Concepts

### Q6: What is a commit?

A **commit** is a snapshot of your project at a specific moment. It includes:
* All file contents at that point
* Author information
* Timestamp
* Commit message describing the changes
* Reference to parent commit(s)

### Q7: What is the staging area?

The **staging area** (or "index") is a intermediate step between your working directory and the repository. It lets you:
* Review changes before committing
* Select exactly which changes to include
* Create focused, logical commits

**Workflow:**

```text
Working Directory → (git add) → Staging Area → (git commit) → Repository
```

### Q8: What's the difference between `git add .` and `git add -A`?

* `git add .` - Stages new and modified files in the current directory and below
* `git add -A` - Stages all changes (new, modified, deleted) in the entire repository

In Git 2.x+, they behave almost identically when run from repository root.

**Recommendation:** Use `git add -A` for clarity.

### Q9: Can I undo a commit?

**Yes**, several ways:

**If you haven't pushed:**

```bash
# Undo commit, keep changes
git reset HEAD~1

# Undo commit, keep changes staged
git reset --soft HEAD~1

# Undo commit, discard changes
git reset --hard HEAD~1
```

**If you've already pushed:**

```bash
# Create new commit that undoes changes
git revert HEAD
```

### Q10: What does "HEAD" mean?

**HEAD** is a pointer to your current location in the repository (usually the latest commit on your current branch).

**Examples:**
* `HEAD` - Current commit
* `HEAD~1` - One commit before current
* `HEAD~3` - Three commits before current
* `HEAD^` - Parent of current commit

---

## Working with Files

### Q11: How do I ignore files in Git?

Create a `.gitignore` file in your repository root:

```text
# .gitignore example
node_modules/
.env
*.log
.DS_Store
__pycache__/
dist/
build/
```

**Common patterns:**
* `filename.txt` - Specific file
* `*.log` - All files with extension
* `directory/` - Entire directory
* `!important.log` - Exception (don't ignore)

### Q12: I accidentally committed a large file. How do I remove it?

```bash
# Remove from Git but keep locally
git rm --cached largefile.zip

# Commit the removal
git commit -m "Remove large file"

# Add to .gitignore to prevent future commits
echo "largefile.zip" >> .gitignore
```

**For files already in history:** You may need `git filter-branch` or `git filter-repo` (advanced).

### Q13: How do I rename a file in Git?

```bash
# Git command (recommended)
git mv oldname.txt newname.txt
git commit -m "Rename file"

# Or regular rename + git add
mv oldname.txt newname.txt
git add -A
git commit -m "Rename file"
```

Git automatically detects renames.

### Q14: How do I delete a file from Git?

```bash
# Delete from Git and filesystem
git rm file.txt
git commit -m "Delete file"

# Delete from Git only (keep local copy)
git rm --cached file.txt
git commit -m "Stop tracking file"
```

---

## Branches

### Q15: What is a branch?

A **branch** is an independent line of development. It's a lightweight pointer to a commit that moves forward as you create new commits.

**Use cases:**
* Develop new features without affecting main code
* Fix bugs in isolation
* Experiment safely
* Enable parallel development

### Q16: What's the difference between `main` and `master`?

They're the same concept—just different names for the default branch. Git historically used `master`, but many organizations now use `main`.

**To change yours:**

```bash
git branch -M main
```

### Q17: How do I switch between branches?

```bash
# Old way
git checkout branch-name

# New way (Git 2.23+)
git switch branch-name

# Create and switch
git switch -c new-branch
```

### Q18: How do I delete a branch?

```bash
# Delete local branch (safe - prevents deleting unmerged)
git branch -d branch-name

# Force delete local branch
git branch -D branch-name

# Delete remote branch
git push origin --delete branch-name
```

### Q19: Can I see all branches?

```bash
# Local branches
git branch

# Remote branches
git branch -r

# All branches (local and remote)
git branch -a

# With last commit info
git branch -v
```

### Q20: What's a "detached HEAD" state?

It means HEAD points to a specific commit instead of a branch. This happens when you checkout a commit directly:

```bash
git checkout a1b2c3d  # Now in detached HEAD
```

**To fix:**

```bash
# Create a branch at this commit
git switch -c new-branch-name

# Or return to a branch
git switch main
```

---

## Remote Repositories

### Q21: What does "origin" mean?

**origin** is the default name Git gives to the remote repository you cloned from. It's just an alias for the remote URL.

```bash
# View remote
git remote -v
# origin  https://github.com/user/repo.git (fetch)
# origin  https://github.com/user/repo.git (push)
```

You can have multiple remotes with different names (origin, upstream, etc.).

### Q22: What's the difference between `git fetch` and `git pull`?

* **`git fetch`** - Downloads changes but doesn't merge them into your branch
* **`git pull`** - Downloads changes AND merges them (fetch + merge)

**Workflow:**

```bash
# Safe: review before merging
git fetch origin
git diff origin/main
git merge origin/main

# Quick: automatic merge
git pull origin main
```

### Q23: How do I update my local repository with remote changes?

```bash
# Get latest changes
git pull origin main

# Or with rebase (cleaner history)
git pull --rebase origin main
```

### Q24: What does "upstream" mean?

**Upstream** typically refers to the original repository you forked from.

```bash
# Add upstream remote
git remote add upstream https://github.com/original/repo.git

# Get latest from original
git fetch upstream
git merge upstream/main
```

### Q25: How do I push my branch to GitHub?

```bash
# First push (sets tracking)
git push -u origin branch-name

# Subsequent pushes
git push
```

---

## Collaboration

### Q26: What's a Pull Request?

A **Pull Request** (PR) is a GitHub feature that lets you propose changes to a repository. It enables:
* Code review before merging
* Discussion of changes
* Automated testing
* Approval workflows

**Not a Git feature**—it's GitHub-specific (GitLab calls them "Merge Requests").

### Q27: What's the difference between Fork and Clone?

* **Fork** - Creates a copy of someone's repository under your GitHub account (GitHub action)
* **Clone** - Downloads a repository to your local computer (Git command)

**Typical workflow:**
1. Fork on GitHub (creates your copy online)
2. Clone your fork locally
3. Make changes and push
4. Open Pull Request to original repository

### Q28: How do I contribute to open source?

**Standard workflow:**

```bash
# 1. Fork the repository on GitHub

# 2. Clone your fork
git clone https://github.com/yourusername/repo.git
cd repo

# 3. Add upstream remote
git remote add upstream https://github.com/original/repo.git

# 4. Create feature branch
git checkout -b fix-typo

# 5. Make changes and commit
git add .
git commit -m "Fix typo in README"

# 6. Push to your fork
git push origin fix-typo

# 7. Open Pull Request on GitHub
```

### Q29: How do I sync my fork with the original repository?

```bash
# Fetch from original repository
git fetch upstream

# Switch to main branch
git checkout main

# Merge upstream changes
git merge upstream/main

# Push to your fork
git push origin main
```

### Q30: What is a merge conflict?

A **merge conflict** occurs when Git can't automatically combine changes because two branches modified the same lines.

**Example conflict:**

```text
<<<<<<< HEAD
const greeting = "Hello";
=======
const greeting = "Hi";
>>>>>>> feature-branch
```

**To resolve:**
1. Edit the file to choose which version to keep (or combine both)
2. Remove conflict markers (`<<<<`, `====`, `>>>>`)
3. `git add` the resolved file
4. `git commit` to complete the merge

---

## Troubleshooting

### Q31: I committed to the wrong branch. How do I move my commit?

```bash
# On wrong branch
git log  # Note the commit hash (e.g., abc123)

# Switch to correct branch
git checkout correct-branch

# Apply the commit here
git cherry-pick abc123

# Go back and remove from wrong branch
git checkout wrong-branch
git reset --hard HEAD~1
```

### Q32: I made changes but can't switch branches. What do I do?

**Option 1: Commit changes**

```bash
git add .
git commit -m "WIP: work in progress"
```

**Option 2: Stash changes**

```bash
git stash
git checkout other-branch
# ... do work ...
git checkout original-branch
git stash pop
```

### Q33: How do I see what I changed before committing?

```bash
# Unstaged changes
git diff

# Staged changes
git diff --staged

# All changes
git diff HEAD
```

### Q34: Can I edit my last commit message?

```bash
# If you haven't pushed
git commit --amend -m "New message"

# If you've already pushed (avoid if others have pulled)
git commit --amend -m "New message"
git push --force
```

### Q35: How do I discard all my local changes?

```bash
# Discard unstaged changes
git checkout .

# Discard all changes (staged and unstaged)
git reset --hard HEAD

# Remove untracked files too
git clean -fd
```

---

## Best Practices

### Q36: How often should I commit?

**Frequently!** Make small, focused commits whenever you complete a logical unit of work:
* Fixed a bug → commit
* Added a feature → commit
* Refactored code → commit

**Benefits:**
* Easier to review
* Easier to revert if needed
* Better history
* Clearer documentation

### Q37: What makes a good commit message?

**Follow these rules:**
1. Use present tense: "Add feature" not "Added feature"
2. Be specific: "Fix login validation bug" not "Fix bug"
3. Keep first line under 50 characters
4. Add detailed description after blank line if needed

**Examples:**

```text
✅ Good:
Add user authentication with JWT
Fix memory leak in image processor
Update dependencies to latest versions

❌ Bad:
fixed stuff
update
asdf
WIP
```

### Q38: Should I commit directly to main?

**No** (in team settings). Best practice:
1. Create feature branch
2. Make changes and commit
3. Push branch
4. Open Pull Request
5. Review and merge

**Exception:** Personal projects or solo development.

### Q39: When should I use `git rebase` vs `git merge`?

**Use merge:**
* When preserving complete history is important
* For merging feature branches into main
* When working with others (safer)

**Use rebase:**
* To keep linear history
* To clean up local commits before sharing
* To update feature branch with latest main

**Never rebase:**
* Commits that have been pushed and others have pulled

### Q40: How do I keep my repository organized?

**Best practices:**
1. Use meaningful branch names: `feature/user-auth` not `branch1`
2. Delete merged branches
3. Use `.gitignore` properly
4. Keep commits focused and atomic
5. Write clear commit messages
6. Tag releases: `v1.0.0`, `v1.1.0`
7. Document in README
8. Use consistent formatting

---

## Additional Questions

### Q41: Can I use Git for non-code projects?

**Yes!** Git works great for:
* Documentation (Markdown files)
* Configuration files
* Writing (books, articles)
* Design files (small sizes)
* Data analysis notebooks

**Not ideal for:**
* Large binary files (videos, large images)
* Files that change frequently in entirety
* Files that need specialized merge tools

### Q42: What's the maximum file size for GitHub?

* **Recommended**: Files under 50 MB
* **Hard limit**: 100 MB per file
* **Repository size**: No hard limit but performance degrades over 1 GB

For large files, use **Git LFS** (Large File Storage).

### Q43: How do I recover deleted commits?

Use `git reflog` to find lost commits:

```bash
# View reflog
git reflog

# Find your commit (e.g., abc123)
# Restore it
git checkout abc123

# Create branch at that point
git switch -c recovered-work
```

Git keeps "deleted" commits for ~30 days.

### Q44: What's the difference between `git reset` and `git revert`?

* **`git reset`** - Moves branch pointer backward (rewrites history)
  * Use for local commits not yet pushed
  * Dangerous if used on shared commits

* **`git revert`** - Creates new commit that undoes changes (preserves history)
  * Safe for pushed commits
  * Recommended for shared repositories

### Q45: Can I edit commits in the middle of history?

**Yes**, with interactive rebase:

```bash
# Edit last 3 commits
git rebase -i HEAD~3
```

**Warning:** Only do this for commits you haven't pushed, or use `push --force` (dangerous in shared repos).

---

## Quick Reference

| Topic | Question | Quick Answer |
|-------|----------|--------------|
| **Basics** | Git vs GitHub? | Git = tool, GitHub = hosting service |
| **Commits** | Undo commit? | `git reset HEAD~1` (not pushed) or `git revert HEAD` (pushed) |
| **Branches** | Create branch? | `git switch -c branch-name` |
| **Remote** | Get updates? | `git pull` |
| **Remote** | Share changes? | `git push` |
| **Files** | Ignore files? | Create `.gitignore` |
| **Conflicts** | Resolve conflict? | Edit file, remove markers, `git add`, `git commit` |

---

## Still Have Questions?

* 📖 Check the [Glossary](glossary.md) for terminology
* 🔧 See [Troubleshooting Guide](troubleshooting-guide.md) for common errors
* 📚 Read [Git Command Reference](git-command-reference.md) for detailed commands
* 💬 Ask in the course Discord: https://discord.gg/CP6vJQbA8S

## External Resources

* [Official Git FAQ](https://git-scm.com/docs/gitfaq)
* [GitHub Help](https://docs.github.com)
* [Stack Overflow Git Questions](https://stackoverflow.com/questions/tagged/git)
