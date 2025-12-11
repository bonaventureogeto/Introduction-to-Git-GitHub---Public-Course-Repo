# 📄 Git Basics Cheat Sheet

Quick reference for essential Git commands.

## Setup

```bash
# Configure user info
git config --global user.name "Your Name"
git config --global user.email "your@email.com"

# Check configuration
git config --list

# Get help
git help <command>
```

## Creating Repositories

```bash
# Initialize new repository
git init

# Clone existing repository
git clone <url>
git clone https://github.com/user/repo.git
```

## Basic Workflow

```text
┌─────────────┐       ┌─────────┐       ┌────────────┐
│  Working    │──add──│ Staging │──────│ Repository │
│  Directory  │       │  Area   │commit│   (.git)   │
└─────────────┘       └─────────┘      └────────────┘
```

## Staging & Committing

```bash
# Check status
git status
git status -s              # Short format

# Stage files
git add <file>             # Stage specific file
git add .                  # Stage all in current directory
git add -A                 # Stage all changes (recommended)

# Unstage files
git reset HEAD <file>
git restore --staged <file>

# Commit changes
git commit -m "Message"
git commit -am "Message"   # Add + commit tracked files

# Amend last commit
git commit --amend -m "New message"
```

## Viewing Changes

```bash
# View unstaged changes
git diff

# View staged changes
git diff --staged

# View commit history
git log
git log --oneline          # Compact view
git log --graph --all      # Visual graph
git log -n 5               # Last 5 commits

# Show specific commit
git show <commit-hash>
```

## Undoing Changes

```bash
# Discard working directory changes
git checkout -- <file>
git restore <file>

# Unstage file (keep changes)
git reset HEAD <file>

# Undo last commit (keep changes)
git reset HEAD~1

# Undo last commit (keep staged)
git reset --soft HEAD~1

# Undo last commit (discard changes)
git reset --hard HEAD~1

# Revert commit (safe for pushed commits)
git revert <commit-hash>
```

## Branching

```bash
# List branches
git branch                 # Local branches
git branch -a              # All branches
git branch -r              # Remote branches

# Create branch
git branch <branch-name>

# Switch branch
git checkout <branch-name>
git switch <branch-name>

# Create and switch
git checkout -b <branch-name>
git switch -c <branch-name>

# Delete branch
git branch -d <branch-name>     # Safe delete
git branch -D <branch-name>     # Force delete

# Rename branch
git branch -m <new-name>
```

## Merging

```bash
# Merge branch into current
git merge <branch-name>

# Abort merge
git merge --abort

# View merged branches
git branch --merged
```

## Remote Repositories

```bash
# List remotes
git remote
git remote -v

# Add remote
git remote add origin <url>

# Remove remote
git remote remove <name>

# Rename remote
git remote rename <old> <new>

# Fetch from remote
git fetch origin

# Pull from remote
git pull origin <branch>
git pull                   # Current tracking branch

# Push to remote
git push origin <branch>
git push -u origin <branch>  # Set upstream
git push                      # To tracking branch

# Push all branches
git push --all origin

# Push tags
git push --tags
```

## Stashing

```bash
# Stash changes
git stash
git stash save "message"

# List stashes
git stash list

# Apply latest stash
git stash pop              # Apply and remove
git stash apply            # Apply and keep

# Apply specific stash
git stash apply stash@{2}

# Drop stash
git stash drop stash@{0}

# Clear all stashes
git stash clear
```

## Ignoring Files

Create `.gitignore` file:

```text
# Dependencies
node_modules/
vendor/

# Environment
.env
.env.local

# Build output
dist/
build/
*.exe

# OS files
.DS_Store
Thumbs.db

# IDE
.vscode/
.idea/
*.swp

# Logs
*.log
logs/
```

## Tagging

```bash
# List tags
git tag

# Create lightweight tag
git tag v1.0.0

# Create annotated tag
git tag -a v1.0.0 -m "Release 1.0"

# Tag specific commit
git tag v0.9.0 <commit-hash>

# Push tag
git push origin v1.0.0

# Push all tags
git push --tags

# Delete tag
git tag -d v1.0.0                    # Local
git push origin --delete v1.0.0     # Remote
```

## Aliases

```bash
# Create shortcuts
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

## Common Patterns

### Start New Project

```bash
git init
git add .
git commit -m "Initial commit"
git remote add origin <url>
git push -u origin main
```

### Clone and Work

```bash
git clone <url>
cd <repo-name>
git checkout -b feature-branch
# Make changes
git add .
git commit -m "Add feature"
git push -u origin feature-branch
```

### Update with Latest

```bash
git fetch origin
git merge origin/main
# Or
git pull origin main
```

### Feature Branch Workflow

```bash
# Create feature branch
git checkout -b feature-x

# Make changes
git add .
git commit -m "Implement feature X"

# Switch to main and update
git checkout main
git pull origin main

# Merge feature
git merge feature-x

# Push
git push origin main

# Delete feature branch
git branch -d feature-x
```

## Status Codes

When using `git status -s`:

```text
?? = Untracked
A  = Added (staged)
M  = Modified
D  = Deleted
R  = Renamed
C  = Copied
U  = Unmerged
```

## Key Concepts

| Concept | Description |
|---------|-------------|
| **Working Directory** | Your project files (what you see) |
| **Staging Area** | Files ready to be committed |
| **Repository** | Complete history stored in `.git/` |
| **Commit** | Snapshot of project at a point in time |
| **Branch** | Independent line of development |
| **HEAD** | Pointer to current commit/branch |
| **Origin** | Default name for remote repository |
| **Main/Master** | Default primary branch |

## Common Workflows

### Daily Development

```bash
# Start of day
git pull

# Make changes
git add .
git commit -m "Description"

# End of day
git push
```

### Before Starting Work

```bash
git status              # Check current state
git pull               # Get latest changes
git checkout -b feature # Create feature branch
```

### Before Committing

```bash
git status              # Check what will be committed
git diff               # Review unstaged changes
git diff --staged      # Review staged changes
```

### Cleaning Up

```bash
# Remove untracked files (dry run)
git clean -n

# Remove untracked files
git clean -f

# Remove untracked files and directories
git clean -fd
```

## Emergency Commands

```bash
# Undo last commit but keep changes
git reset HEAD~1

# Discard all local changes
git reset --hard HEAD

# Restore deleted file
git checkout HEAD -- <file>

# Find lost commits
git reflog
git checkout <commit-hash>

# Abort merge/rebase
git merge --abort
git rebase --abort
```

## Best Practices

✅ **DO:**
* Commit often with clear messages
* Pull before push
* Use branches for features
* Review changes before committing (`git diff`)
* Write meaningful commit messages

❌ **DON'T:**
* Commit sensitive data (.env, passwords)
* Commit large binary files
* Force push to shared branches
* Commit directly to main in team projects
* Use `git reset --hard` on pushed commits

## Quick Tips

1. **Check before you commit:**

   ```bash
   git status
   git diff --staged
   ```

2. **Commit message format:**

   ```text
   Short summary (50 chars or less)
   
   Detailed explanation if needed...
   ```

3. **Undo mistakes safely:**
   * Not pushed yet? Use `git reset`
   * Already pushed? Use `git revert`

4. **Keep .gitignore updated:**
   Start projects with a good `.gitignore`

5. **Use branches:**
   Never work directly on main for features

## Related Resources

* [Git Command Reference](../docs/git-command-reference.md)
* [Glossary](../docs/glossary.md)
* [FAQ](../docs/faq.md)
* [Emergency Commands](./emergency-commands.md)
