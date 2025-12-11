# 📊 Git & GitHub Comparison Charts

Visual comparisons to help understand key Git concepts and make informed decisions.

## Table of Contents

* [Git vs GitHub](#git-vs-github)
* [Merge vs Rebase](#merge-vs-rebase)
* [HTTPS vs SSH](#https-vs-ssh)
* [Reset vs Revert](#reset-vs-revert)
* [Fork vs Clone](#fork-vs-clone)
* [Fetch vs Pull](#fetch-vs-pull)
* [git add vs git commit](#git-add-vs-git-commit)
* [Branch vs Tag](#branch-vs-tag)
* [Checkout vs Switch](#checkout-vs-switch)

---

## Git vs GitHub

| Aspect | Git | GitHub |
|--------|-----|--------|
| **What is it?** | Version control software | Cloud hosting service |
| **Type** | Tool/Program | Web platform |
| **Runs on** | Your local computer | GitHub's servers |
| **Purpose** | Track changes in code | Host Git repositories online |
| **Cost** | Free & open source | Free tier + paid plans |
| **Installation** | Download from git-scm.com | No installation (web-based) |
| **Works offline?** | Yes | No (requires internet) |
| **Key features** | Commits, branches, merges | Pull requests, issues, actions |
| **Alternatives** | Mercurial, SVN | GitLab, Bitbucket |
| **Can exist without the other?** | Yes | No (needs Git) |
| **Learn first** | Git basics | Then GitHub features |

**Analogy:**
* **Git** = Microsoft Word (the software)
* **GitHub** = Google Docs / OneDrive (cloud storage + collaboration)

---

## Merge vs Rebase

| Aspect | Merge | Rebase |
|--------|-------|--------|
| **Command** | `git merge feature` | `git rebase main` |
| **History** | Preserves complete history | Creates linear history |
| **Creates commit** | Yes (merge commit) | No (rewrites commits) |
| **Use when** | Combining finished features | Updating feature branch |
| **Collaboration** | Safe for shared branches | Risky for shared branches |
| **Conflicts** | Resolve once | May resolve multiple times |
| **Traceability** | Shows when branches merged | Harder to trace |
| **Best for** | Main branch merges | Local cleanup |
| **Reversible** | Yes (easy) | Difficult |

### Visual Comparison

**Before:**

```text
main:    A---B---C
              \
feature:       D---E
```

**After Merge:**

```text
main:    A---B---C-------F
              \         /
feature:       D---E---
```

**After Rebase:**

```text
main:    A---B---C
                  \
feature:           D'---E'
```

### When to Use

**Use Merge:**
* Merging feature branches into main
* Preserving complete project history
* Working with others on a branch
* Want to see when features were added

**Use Rebase:**
* Cleaning up local commits before pushing
* Updating your feature branch with latest main
* Creating linear project history
* Working alone on a branch

---

## HTTPS vs SSH

| Aspect | HTTPS | SSH |
|--------|-------|-----|
| **URL format** | `https://github.com/user/repo.git` | `git@github.com:user/repo.git` |
| **Setup complexity** | Simple | Requires SSH key setup |
| **Authentication** | Username + token each time | Once per computer |
| **Credentials** | Token-based | Key-based |
| **Port** | 443 (standard web) | 22 |
| **Firewall friendly** | Yes | May be blocked |
| **Security** | Secure (encrypted) | Very secure |
| **Recommended for** | Beginners | Experienced users |
| **Works behind proxy** | Usually yes | Sometimes no |
| **Speed** | Slightly slower | Slightly faster |

### Setup Comparison

**HTTPS Setup:**

```bash
# 1. Clone with HTTPS URL
git clone https://github.com/user/repo.git

# 2. When pushing, enter:
#    - Username: your GitHub username
#    - Password: your Personal Access Token
```

**SSH Setup:**

```bash
# 1. Generate SSH key
ssh-keygen -t ed25519 -C "your@email.com"

# 2. Add key to SSH agent
ssh-add ~/.ssh/id_ed25519

# 3. Copy public key to GitHub
cat ~/.ssh/id_ed25519.pub  # Copy this

# 4. GitHub Settings → SSH Keys → Add

# 5. Clone with SSH URL
git clone git@github.com:user/repo.git

# 6. No credentials needed for push/pull!
```

### Switching Between HTTPS and SSH

```bash
# Change from HTTPS to SSH
git remote set-url origin git@github.com:user/repo.git

# Change from SSH to HTTPS
git remote set-url origin https://github.com/user/repo.git

# Verify current URL
git remote -v
```

---

## Reset vs Revert

| Aspect | Reset | Revert |
|--------|-------|--------|
| **Command** | `git reset` | `git revert` |
| **Effect** | Moves branch pointer back | Creates new commit |
| **History** | Rewrites history | Preserves history |
| **Safety** | Dangerous (can lose work) | Safe |
| **Use on pushed commits** | ❌ No | ✅ Yes |
| **Visibility** | Changes disappear | Changes visible in history |
| **Reversible** | Difficult | Easy |
| **Best for** | Local unpushed commits | Shared/pushed commits |

### Visual Comparison

**Original:**

```text
A---B---C---D---E (HEAD)
```

**After `git reset --hard HEAD~2`:**

```text
A---B---C (HEAD)
(D and E are gone!)
```

**After `git revert HEAD~1` (reverting D):**

```text
A---B---C---D---E---F (HEAD)
                    └─ Undoes D
```

### Reset Modes

```bash
# Soft: Keep changes staged
git reset --soft HEAD~1

# Mixed (default): Keep changes unstaged
git reset HEAD~1

# Hard: Discard all changes
git reset --hard HEAD~1  # ⚠️ Dangerous!
```

### When to Use

**Use Reset:**
* Commits are only local (not pushed)
* Want to completely remove commits
* Cleaning up commit history before pushing
* Know what you're doing!

**Use Revert:**
* Commits are already pushed
* Working on shared branch
* Want to preserve history
* Need to undo specific commits safely

---

## Fork vs Clone

| Aspect | Fork | Clone |
|--------|------|-------|
| **Action** | GitHub button | Git command |
| **Creates** | Copy on GitHub | Copy on your computer |
| **Location** | Your GitHub account | Your local machine |
| **Command** | Click "Fork" button | `git clone <url>` |
| **Connection** | Creates upstream link | Creates remote link |
| **Use for** | Contributing to others' projects | Getting code locally |
| **Requires** | GitHub account | Git installed |
| **Visibility** | Public (on GitHub) | Private (your computer) |
| **Can you push?** | To your fork: Yes | Depends on permissions |

### Workflow Comparison

**Clone Workflow** (when you have access):

```bash
# 1. Clone repository
git clone https://github.com/original-owner/repo.git

# 2. Make changes
git add .
git commit -m "Changes"

# 3. Push directly
git push origin main
```

**Fork Workflow** (for open source):

```bash
# 1. Fork on GitHub (click Fork button)

# 2. Clone YOUR fork
git clone https://github.com/YOUR-USERNAME/repo.git

# 3. Add upstream remote
git remote add upstream https://github.com/original-owner/repo.git

# 4. Make changes
git checkout -b feature-branch
git add .
git commit -m "Add feature"

# 5. Push to YOUR fork
git push origin feature-branch

# 6. Open Pull Request on GitHub
```

### When to Use

**Use Clone:**
* Your own repositories
* Repositories where you have push access
* Team projects where you're a collaborator
* Just want to read/run the code

**Use Fork:**
* Contributing to open source
* Don't have push access to original
* Want to experiment without affecting original
* Planning to submit Pull Request

---

## Fetch vs Pull

| Aspect | Fetch | Pull |
|--------|-------|------|
| **Command** | `git fetch` | `git pull` |
| **Downloads** | Yes | Yes |
| **Merges** | No | Yes |
| **Equivalent to** | Just download | `fetch` + `merge` |
| **Updates working dir** | No | Yes |
| **Risk** | Low (safe) | Higher (may cause conflicts) |
| **Review before merge** | Yes | No |
| **Use when** | Want to check first | Ready to integrate |

### Visual Comparison

**git fetch:**

```text
Remote: A---B---C---D---E
Local:  A---B---C (your work)
        
After fetch:
origin/main: A---B---C---D---E (updated)
main:        A---B---C (unchanged)
```

**git pull:**

```text
Remote: A---B---C---D---E
Local:  A---B---C (your work)
        
After pull:
main:    A---B---C---D---E (updated & merged)
```

### Commands

```bash
# Fetch (safe - review first)
git fetch origin
git diff origin/main      # Review differences
git merge origin/main     # Merge when ready

# Pull (quick - automatic merge)
git pull origin main

# Pull with rebase (cleaner history)
git pull --rebase origin main
```

### When to Use

**Use Fetch:**
* Want to see what's new before merging
* Need to review changes first
* Checking for conflicts before merging
* More careful approach

**Use Pull:**
* Trust the changes
* Want quick update
* No concerns about conflicts
* Common for regular synchronization

---

## git add vs git commit

| Aspect | git add | git commit |
|--------|---------|------------|
| **Stage** | Staging area | Repository |
| **Purpose** | Select changes | Save snapshot |
| **Reversible** | Easy | Harder |
| **Required** | Before commit | After add |
| **Creates** | Staged changes | Commit object |
| **Frequency** | Multiple times | After staging |

### Workflow

```text
Working Directory → git add → Staging Area → git commit → Repository

[file.txt]  ────────────→  [file.txt]  ──────────────→  [Commit]
(modified)    (select)     (staged)      (save)         (permanent)
```

### Examples

```bash
# Add specific file
git add file.txt

# Check what's staged
git status

# Commit staged changes
git commit -m "Add file"

# Add and commit in one step (tracked files only)
git commit -am "Update file"
```

---

## Branch vs Tag

| Aspect | Branch | Tag |
|--------|--------|-----|
| **Purpose** | Development line | Mark specific point |
| **Moves** | Yes (with new commits) | No (stays at commit) |
| **Mutable** | Yes | Usually immutable |
| **Use for** | Features, fixes | Releases, versions |
| **Typical names** | `feature-x`, `bugfix-y` | `v1.0.0`, `release-2.1` |
| **Common workflow** | Create, work, merge, delete | Create, never delete |
| **Number typically** | Many active | Few permanent |

### Visual Comparison

**Branches:**

```text
main:    A---B---C---D (main moves)
          \
feature:   E---F (feature moves)
```

**Tags:**

```text
main:  A---B---C---D---E---F
       ↑       ↑           ↑
     v0.1    v1.0       v2.0
     (fixed) (fixed)    (fixed)
```

### Commands

```bash
# Branches
git branch feature        # Create
git checkout feature      # Switch to
git branch -d feature     # Delete

# Tags
git tag v1.0.0           # Create lightweight
git tag -a v1.0.0 -m "Version 1.0"  # Annotated
git push origin v1.0.0   # Push tag
git push --tags          # Push all tags
```

---

## Checkout vs Switch

| Aspect | Checkout | Switch |
|--------|----------|--------|
| **Introduced** | Original Git command | Git 2.23 (2019) |
| **Purpose** | Multi-purpose | Branch operations only |
| **Clarity** | Less clear | More clear |
| **Can restore files** | Yes | No (use `git restore`) |
| **Can create branch** | Yes (`-b`) | Yes (`-c`) |
| **Can detach HEAD** | Yes | Yes |
| **Recommended** | Legacy | Modern Git |

### Command Comparison

| Task | Checkout | Switch |
|------|----------|--------|
| **Switch to branch** | `git checkout main` | `git switch main` |
| **Create and switch** | `git checkout -b feature` | `git switch -c feature` |
| **Restore file** | `git checkout -- file.txt` | `git restore file.txt` |
| **Detach HEAD** | `git checkout abc123` | `git switch --detach abc123` |

### Why Switch Was Introduced

The `checkout` command did too many things:
* Switch branches
* Restore files
* Create branches
* Detach HEAD

Git 2.23 split this into:
* `git switch` - for branch operations
* `git restore` - for file operations

### Migration Guide

```bash
# Old way (still works)
git checkout main
git checkout -b feature
git checkout -- file.txt

# New way (clearer)
git switch main
git switch -c feature
git restore file.txt
```

**Recommendation:** Use `switch` and `restore` in new scripts and workflows for clarity.

---

## Quick Decision Guide

### I want to...

**...combine branches:**
* Use `merge` for features
* Use `rebase` for cleanup

**...connect to GitHub:**
* Use HTTPS if starting out
* Use SSH for convenience

**...undo a commit:**
* Use `reset` if local only
* Use `revert` if pushed

**...get someone's code:**
* Use `clone` if you have access
* Use `fork` for open source

**...update my code:**
* Use `fetch` to review first
* Use `pull` for quick update

**...mark a release:**
* Use `tag` for versions
* Use `branch` for development

**...switch branches:**
* Use `switch` (modern)
* Use `checkout` (legacy but works)

---

## Related Resources

* [Git Command Reference](git-command-reference.md)
* [Branching Strategies](branching-strategies.md)
* [FAQ](faq.md)
* [Glossary](glossary.md)
