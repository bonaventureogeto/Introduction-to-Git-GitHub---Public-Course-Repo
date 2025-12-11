# 🚨 Git Emergency Commands - "Oh No!" Situations

Quick fixes for common Git disasters. Save this for when things go wrong!

## Table of Contents

* [Uncommitted Changes](#uncommitted-changes)
* [Wrong Commits](#wrong-commits)
* [Branch Issues](#branch-issues)
* [Remote Problems](#remote-problems)
* [Lost Work](#lost-work)
* [Merge Disasters](#merge-disasters)
* [File Problems](#file-problems)

---

## Uncommitted Changes

### "I want to discard ALL my changes!"

```bash
# ⚠️ WARNING: This permanently deletes your work!

# Discard all unstaged changes
git checkout .
# Or (Git 2.23+)
git restore .

# Remove all untracked files and directories
git clean -fd

# Reset everything to last commit
git reset --hard HEAD
```

### "I want to save my work but not commit it yet"

```bash
# Stash your changes
git stash save "Work in progress"

# Do other work...

# Get your changes back
git stash pop
```

### "I accidentally staged the wrong files"

```bash
# Unstage specific file
git reset HEAD filename.txt
# Or (Git 2.23+)
git restore --staged filename.txt

# Unstage everything
git reset HEAD
```

---

## Wrong Commits

### "I committed to the wrong branch!"

```bash
# Note the commit hash
git log --oneline -1  # Copy the hash (e.g., abc123)

# Undo the commit but keep changes
git reset HEAD~1

# Switch to correct branch
git checkout correct-branch

# Recommit there
git add .
git commit -m "Correct commit message"
```

**Alternative (if commit is already pushed):**

```bash
# On wrong branch
git log --oneline -1  # Note hash (abc123)

# Switch to correct branch
git checkout correct-branch

# Cherry-pick the commit
git cherry-pick abc123

# Go back and undo on wrong branch
git checkout wrong-branch
git revert abc123  # If pushed
# Or
git reset --hard HEAD~1  # If not pushed
```

### "I made a typo in my last commit message"

```bash
# If you HAVEN'T pushed yet
git commit --amend -m "Correct message"

# If you HAVE pushed (not recommended for shared branches)
git commit --amend -m "Correct message"
git push --force  # ⚠️ Dangerous on shared branches
```

### "I forgot to add files to my last commit"

```bash
# Add the forgotten files
git add forgotten-file.txt

# Amend the last commit
git commit --amend --no-edit
```

### "I want to undo my last commit but keep the changes"

```bash
# Undo commit, keep changes staged
git reset --soft HEAD~1

# Undo commit, keep changes unstaged
git reset HEAD~1

# Undo commit, discard changes completely
git reset --hard HEAD~1  # ⚠️ Permanently deletes changes
```

### "I want to undo multiple commits"

```bash
# Undo last 3 commits (keep changes)
git reset HEAD~3

# Undo last 3 commits (discard changes)
git reset --hard HEAD~3  # ⚠️ Dangerous!

# Undo to specific commit
git reset --hard abc123
```

### "I need to undo a commit that's already pushed"

```bash
# Create a new commit that reverses the changes (SAFE)
git revert abc123

# For multiple commits
git revert abc123 def456 ghi789

# Or undo a range
git revert abc123..ghi789
```

---

## Branch Issues

### "I'm stuck in 'detached HEAD' state!"

```bash
# If you made changes and want to keep them
git switch -c new-branch-name

# If you don't care about changes
git switch main
```

### "I can't switch branches - uncommitted changes error"

```bash
# Option 1: Stash changes
git stash
git checkout other-branch
# Later: git stash pop

# Option 2: Commit changes
git add .
git commit -m "WIP"
git checkout other-branch

# Option 3: Force checkout (discard changes)
git checkout -f other-branch  # ⚠️ Loses changes
```

### "I deleted a branch by mistake!"

```bash
# Find the branch in reflog
git reflog

# Find the last commit of deleted branch (e.g., abc123)
# Recreate branch at that commit
git checkout -b recovered-branch abc123
```

### "I want to rename my current branch"

```bash
# Rename current branch
git branch -m new-name

# If already pushed
git push origin :old-name new-name
git push origin -u new-name
```

---

## Remote Problems

### "My push was rejected!"

```bash
# Usually means remote has changes you don't have

# Option 1: Pull and merge
git pull origin main
# Resolve any conflicts
git push origin main

# Option 2: Pull with rebase (cleaner history)
git pull --rebase origin main
# Resolve any conflicts
git push origin main

# Option 3: Force push (⚠️ DANGEROUS - only if you're sure!)
git push --force origin main  # Can lose others' work!
```

### "I pushed sensitive data (passwords, API keys)!"

```bash
# ⚠️ URGENT: Assume the secret is compromised!
# 1. Immediately change/revoke the password/key
# 2. Remove from history

# For recent commit
git reset --hard HEAD~1
git push --force

# For older commits - use BFG Repo-Cleaner or git filter-branch
# This is advanced - see full guide in troubleshooting docs
```

### "I can't pull - merge conflict error"

```bash
# Abort the pull
git merge --abort

# Try with rebase instead
git pull --rebase origin main

# Or stash changes first
git stash
git pull origin main
git stash pop
```

### "Wrong remote URL configured"

```bash
# Check current remote
git remote -v

# Change remote URL
git remote set-url origin https://github.com/user/correct-repo.git

# Verify
git remote -v
```

---

## Lost Work

### "I deleted a file by accident!"

```bash
# If you haven't committed the deletion
git checkout HEAD -- filename.txt
# Or (Git 2.23+)
git restore filename.txt

# If you committed the deletion
git checkout HEAD~1 -- filename.txt
git commit -m "Restore deleted file"
```

### "I lost commits after reset --hard!"

```bash
# Use reflog to find lost commits
git reflog

# Find your commit (e.g., abc123)
# Recover it
git checkout abc123

# Create branch to save it
git switch -c recovered-work

# Or reset to that point
git reset --hard abc123
```

### "I can't find my stashed work!"

```bash
# List all stashes
git stash list

# Apply specific stash
git stash apply stash@{2}

# Or pop latest
git stash pop

# If you dropped a stash by accident
git fsck --unreachable | grep commit
# Find stash commits and checkout
```

---

## Merge Disasters

### "Merge conflict - I give up, start over!"

```bash
# Abort the merge
git merge --abort

# Or abort rebase
git rebase --abort

# Return to clean state
git reset --hard HEAD
```

### "I merged the wrong branch!"

```bash
# If you haven't pushed
git reset --hard HEAD~1  # Undo merge

# If you have pushed
git revert -m 1 HEAD  # Revert merge commit
```

### "I want to accept all their changes in a conflict"

```bash
# During merge conflict
git checkout --theirs filename.txt  # Take their version
git add filename.txt
git commit
```

### "I want to accept all my changes in a conflict"

```bash
# During merge conflict
git checkout --ours filename.txt  # Keep your version
git add filename.txt
git commit
```

---

## File Problems

### "I committed a huge file by mistake!"

```bash
# If you haven't pushed yet
git reset --soft HEAD~1
git reset HEAD large-file.bin
# Add to .gitignore
echo "large-file.bin" >> .gitignore
git add .
git commit -m "Remove large file"

# If already pushed - need BFG Repo-Cleaner or git filter-branch
```

### "Git is tracking files I want to ignore"

```bash
# Add to .gitignore
echo "unwanted-file.log" >> .gitignore

# Remove from Git but keep file
git rm --cached unwanted-file.log

# Commit
git commit -m "Stop tracking unwanted file"
```

### "All my line endings are wrong!"

```bash
# Configure line endings
# Windows:
git config --global core.autocrlf true

# macOS/Linux:
git config --global core.autocrlf input

# Fix existing files
git add --renormalize .
git commit -m "Fix line endings"
```

---

## Nuclear Options

### "Everything is broken - start completely fresh"

```bash
# ⚠️ LAST RESORT - Back up your work first!

# Option 1: Delete .git and reinitialize
rm -rf .git
git init
git add .
git commit -m "Fresh start"

# Option 2: Clone again
cd ..
rm -rf problem-repo
git clone <url> problem-repo
cd problem-repo
```

### "Reset local branch to exactly match remote"

```bash
# ⚠️ Destroys all local changes and commits

# Fetch latest
git fetch origin

# Reset to remote state
git reset --hard origin/main

# Clean untracked files
git clean -fd
```

---

## Prevention Tips

🛡️ **Before you do something risky:**

```bash
# Create a backup branch
git branch backup-$(date +%Y%m%d-%H%M%S)

# Or create a tag
git tag backup-point
```

🛡️ **Always check before pushing:**

```bash
git status
git log --oneline -5
git diff origin/main
```

🛡️ **Regular backups:**

```bash
# Push to backup remote regularly
git remote add backup git@backup-server:repo.git
git push backup --all
```

---

## Quick Decision Tree

**Did you...**

```text
├─ Make a bad commit?
│  ├─ Not pushed yet? → git reset HEAD~1
│  └─ Already pushed? → git revert <commit>
│
├─ Delete something important?
│  ├─ Not committed? → git checkout HEAD -- <file>
│  └─ Committed? → git reflog → git checkout <hash> -- <file>
│
├─ Mess up a merge?
│  └─ git merge --abort
│
├─ Want to start over on a file?
│  └─ git checkout HEAD -- <file>
│
└─ Everything is broken?
   ├─ git reflog (find good commit)
   └─ git reset --hard <good-commit>
```

---

## Getting Help

If none of these work:

1. **Don't panic and make it worse!**
2. **Ask for help:**
   * [Course Discord](https://discord.gg/CP6vJQbA8S)
   * [Stack Overflow - Git tag](https://stackoverflow.com/questions/tagged/git)
   * [Git Community](https://git-scm.com/community)

3. **Useful diagnostic commands:**

   ```bash
   git status
   git log --oneline --graph --all
   git reflog
   git remote -v
   ```

---

## Related Resources

* [Troubleshooting Guide](../docs/troubleshooting-guide.md)
* [FAQ](../docs/faq.md)
* [Git Command Reference](../docs/git-command-reference.md)
* [Oh Shit, Git!](https://ohshitgit.com/) - External resource

---

**Remember:** Git rarely permanently deletes anything immediately. If you mess up, there's usually a way to recover. The `reflog` is your friend!

**Pro tip:** Before trying any "nuclear option", create a backup branch:

```bash
git branch emergency-backup
```
