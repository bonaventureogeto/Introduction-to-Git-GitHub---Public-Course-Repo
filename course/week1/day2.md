# 🗓 Week 1 – Foundations of Git

## Day 2: Initializing Repositories

### 📚 Learning Objectives

By the end of this lesson, you will be able to:

* Create and initialize new Git repositories from scratch
* Understand the three-stage Git workflow (working directory, staging area, repository)
* Stage files using `git add` and create commits using `git commit`
* Write meaningful commit messages following best practices
* Connect local repositories to GitHub remotes
* Push commits to remote repositories

### ⏱️ Estimated Time

**50-65 minutes** (including reading, understanding, and hands-on practice)

### 🎯 Prerequisites

* Completion of Day 1 (Git installation and configuration)
* A working Git installation with configured username and email
* A GitHub account

### 🎯 Milestones

* Create and initialize local Git repositories.
* Understand the **working directory**, **staging area**, and **commits**.

---

## 1. Understanding the Git Workflow

When working with Git, there are **three key areas**:

1. **Working Directory** – where your project files live (what you see in your folder).
2. **Staging Area** – where changes are prepared before saving (like a shopping cart before checkout).
3. **Repository (.git)** – where committed snapshots are stored permanently with history.

👉 The Git cycle looks like this:

```text
Working Directory → git add → Staging Area → git commit → Repository
```

---

## 2. Creating a New Repository

1. Open your terminal.
2. Create a new project folder:

   ```bash
   mkdir my-first-repo
   cd my-first-repo
   ```
3. Initialize Git inside it:

   ```bash
   git init
   ```

   You’ll see:

   ```
   Initialized empty Git repository in .../my-first-repo/.git/
   ```

   > This `.git` folder is where Git stores all the history and commits.

---

## 3. Adding Your First File

1. Create a file:

   ```bash
   echo "My name is <Your Name> and I’m learning Git." > about-me.txt
   ```
2. Check Git status:

   ```bash
   git status
   ```

   Output:

   ```
   Untracked files:
     about-me.txt
   ```

   👉 This means Git sees the file but is not tracking it yet.

---

## 4. Staging and Committing

1. Stage the file:

   ```bash
   git add about-me.txt
   ```
2. Commit the file (save a snapshot):

   ```bash
   git commit -m "Added about-me.txt with introduction"
   ```

   Output:

   ```
   1 file changed, 1 insertion(+)
   create mode 100644 about-me.txt
   ```

Now Git has saved this version in history.

---

## 5. Linking to GitHub

1. Create a new empty repository on GitHub called **my-first-repo**.

   * Do **not** add a README.
2. Connect your local repo to GitHub:

   ```bash
   git remote add origin https://github.com/<your-username>/my-first-repo.git
   ```
3. Push your commit:

   ```bash
   git branch -M main
   git push -u origin main
   ```

Check GitHub → you should see `about-me.txt` online 🎉

---


## 🔍 Behind the Scenes: The Three Areas

When you work with Git, every file moves through these three states:

1. **Working Directory** - Your actual project files
   - Files here can be modified freely
   - Git knows about these files but hasn't saved them yet

2. **Staging Area (Index)** - The "preparation zone"
   - Stored in `.git/index`
   - Files here are marked "ready to commit"
   - You can choose exactly which changes to include in a commit

3. **Repository (.git)** - The permanent history
   - Compressed snapshots of your project
   - Each commit is immutable (can't be changed)
   - Contains complete history of your project

```text
┌─────────────────┐
│ Working Dir     │
│  - file.txt ●  │ (modified)
└────────┬────────┘
         │ git add
         ↓
┌─────────────────┐
│ Staging Area    │
│  - file.txt ●  │ (staged)
└────────┬────────┘
         │ git commit
         ↓
┌─────────────────┐
│ Repository      │
│  - commit abc1  │
│  - commit def2  │ (permanent)
└─────────────────┘
```

---

## 🌍 Real-World Examples

### Example 1: Personal Blog Repository

```bash
mkdir my-blog
cd my-blog
git init
echo "# My Tech Blog" > README.md
echo "<!DOCTYPE html><html><head><title>Home</title></head></html>" > index.html
git add README.md index.html
git commit -m "Initial blog structure"
```

**Output:**

```text
Initialized empty Git repository in /home/user/my-blog/.git/
[main (root-commit) a1b2c3d] Initial blog structure
 2 files changed, 2 insertions(+)
 create mode 100644 README.md
 create mode 100644 index.html
```

### Example 2: Tracking Configuration Changes

```bash
# Start tracking your shell configuration
cd ~
git init dotfiles
cd dotfiles
cp ~/.bashrc bashrc
git add bashrc
git commit -m "Add bash configuration"
```

### Example 3: Multiple Commits Workflow

```bash
mkdir task-manager
cd task-manager
git init

# First feature
echo "# Task Manager" > README.md
git add README.md
git commit -m "Add project README"

# Second feature
echo "TODO: Build UI" > tasks.txt
git add tasks.txt
git commit -m "Add initial task list"

# Third feature
echo "const app = {};" > app.js
git add app.js
git commit -m "Add application entry point"
```

---

## 📊 ASCII Diagrams

### The Staging Area Explained

```text
Working Directory          Staging Area           Repository
     (edit)                  (review)              (save)
┌──────────────┐         ┌──────────────┐      ┌──────────────┐
│              │         │              │      │              │
│  file1.txt ● │git add  │  file1.txt ● │commit│  Snapshot 1  │
│  file2.txt ● ├────────→│              ├─────→│  (commit)    │
│  file3.txt   │         │              │      │              │
└──────────────┘         └──────────────┘      └──────────────┘
   (3 files)              (1 staged)             (1 committed)
```

### Git Commit Chain

```text
[Initial Commit]  →  [Add Feature]  →  [Fix Bug]  →  [HEAD]
    abc1234             def5678           ghi9012      (latest)
       ↓                   ↓                 ↓
   Project v1          Project v2        Project v3
```

---

## ⚠️ Common Mistakes & Troubleshooting

| Problem | Symptom | Solution |
|---------|---------|----------|
| **Forgot to run git init** | `fatal: not a git repository` | Run `git init` in your project directory |
| **Added wrong file** | Staged file you didn't want | Use `git reset HEAD <file>` to unstage |
| **Typo in commit message** | Message has spelling error | Use `git commit --amend -m "New message"` (only if not pushed) |
| **Empty commit** | `nothing to commit, working tree clean` | Make sure you ran `git add` first |
| **Already exists remote** | `remote origin already exists` | Use `git remote remove origin` then re-add |
| **Wrong directory** | Can't find files | Use `pwd` (Mac/Linux) or `cd` (Windows) to check location |
| **Large files added** | `warning: Large files being tracked` | Add to `.gitignore` and use `git rm --cached <file>` |

---

## 💡 Pro Tips

1. **Commit message best practices:**
   - Use present tense: "Add feature" not "Added feature"
   - Be specific: "Fix login validation bug" not "Fix bug"
   - Keep first line under 50 characters
   - Add detailed description after blank line if needed

2. **Selective staging:**
   ```bash
   git add -p  # Stage changes interactively (patch mode)
   ```

3. **View what's staged:**
   ```bash
   git diff --staged  # See what will be committed
   ```

4. **Undo last commit (keep changes):**
   ```bash
   git reset --soft HEAD~1
   ```

5. **Create .gitignore early:**
   ```bash
   # .gitignore example
   node_modules/
   .env
   *.log
   __pycache__/
   .DS_Store
   ```

6. **Check what files Git is tracking:**
   ```bash
   git ls-files
   ```

---

## 🧪 Practice Problems

<details>
<summary>Problem 1: Basic Repository (Beginner)</summary>

**Task**: Create a repository called `notes-app` with three text files: `todo.txt`, `ideas.txt`, and `README.md`. Commit them all together.

**Solution**:

```bash
mkdir notes-app
cd notes-app
git init
echo "Task 1" > todo.txt
echo "Idea 1" > ideas.txt
echo "# Notes App" > README.md
git add .
git commit -m "Initial notes app structure"
```

**Verification**:
```bash
git log --oneline
git ls-files  # Should list all 3 files
```

</details>

<details>
<summary>Problem 2: Staging Specific Files (Intermediate)</summary>

**Task**: Create 4 files, but only commit 2 of them. The other 2 should remain untracked.

**Solution**:

```bash
mkdir selective-commit
cd selective-commit
git init
echo "Ready" > file1.txt
echo "Ready" > file2.txt
echo "Not ready" > file3.txt
echo "Not ready" > file4.txt

git add file1.txt file2.txt
git commit -m "Add only ready files"
git status  # file3 and file4 should be untracked
```

</details>

<details>
<summary>Problem 3: Amending a Commit (Intermediate)</summary>

**Task**: Make a commit, realize you forgot a file, then add it to the same commit.

**Solution**:

```bash
mkdir project
cd project
git init
echo "First" > file1.txt
git add file1.txt
git commit -m "Add files"

# Oops, forgot file2!
echo "Second" > file2.txt
git add file2.txt
git commit --amend --no-edit  # Adds to previous commit
```

**Verification**:
```bash
git log --oneline  # Should only show 1 commit
git show  # Should show both files
```

</details>

<details>
<summary>Problem 4: Understanding git status (Beginner)</summary>

**Task**: Create a repository with files in all three states: untracked, staged, and committed.

**Solution**:

```bash
mkdir status-demo
cd status-demo
git init

# Committed file
echo "Committed" > committed.txt
git add committed.txt
git commit -m "Add committed file"

# Staged file
echo "Staged" > staged.txt
git add staged.txt

# Untracked file
echo "Untracked" > untracked.txt

git status
```

**Expected Output**:
```text
Changes to be committed:
  new file:   staged.txt

Untracked files:
  untracked.txt
```

</details>

<details>
<summary>Problem 5: Multi-Step Project (Advanced)</summary>

**Task**: Create a project with 5 meaningful commits, each building on the previous one.

**Solution**:

```bash
mkdir website-project
cd website-project
git init

# Commit 1: Project structure
echo "# My Website" > README.md
git add README.md
git commit -m "Initialize project with README"

# Commit 2: HTML structure
echo "<!DOCTYPE html>" > index.html
git add index.html
git commit -m "Add HTML structure"

# Commit 3: Styling
echo "body { margin: 0; }" > style.css
git add style.css
git commit -m "Add CSS styling"

# Commit 4: JavaScript
echo "console.log('Ready');" > script.js
git add script.js
git commit -m "Add JavaScript functionality"

# Commit 5: Configuration
echo "node_modules/" > .gitignore
git add .gitignore
git commit -m "Add gitignore for dependencies"

git log --oneline --graph
```

</details>

---

## 📋 Quick Reference Table

| Command | Description | Example |
|---------|-------------|---------|
| `git init` | Initialize a new repository | `git init` |
| `git add <file>` | Stage a specific file | `git add index.html` |
| `git add .` | Stage all changes in current directory | `git add .` |
| `git add -A` | Stage all changes (including deletions) | `git add -A` |
| `git commit -m "msg"` | Create a commit with message | `git commit -m "Add homepage"` |
| `git commit --amend` | Modify the last commit | `git commit --amend -m "Better message"` |
| `git status` | Check repository status | `git status` |
| `git status -s` | Short status format | `git status -s` |
| `git log` | View commit history | `git log --oneline` |
| `git diff` | View unstaged changes | `git diff` |
| `git diff --staged` | View staged changes | `git diff --staged` |
| `git rm --cached <file>` | Unstage and untrack file | `git rm --cached secrets.txt` |
| `git ls-files` | List tracked files | `git ls-files` |

---

## 💻 Platform-Specific Commands

### Windows (Command Prompt)

```cmd
REM Create and navigate to directory
mkdir my-first-repo
cd my-first-repo

REM Create file
echo My name is John > about-me.txt

REM Check file contents
type about-me.txt
```

### Windows (PowerShell)

```powershell
# Create and navigate to directory
New-Item -ItemType Directory -Name my-first-repo
Set-Location my-first-repo

# Create file
"My name is John" | Out-File about-me.txt

# Check file contents
Get-Content about-me.txt
```

### macOS/Linux

```bash
# Create and navigate to directory
mkdir my-first-repo
cd my-first-repo

# Create file
echo "My name is John" > about-me.txt

# Check file contents
cat about-me.txt
```

---

## 📝 Assignment: Day 2

1. Create a new folder `my-first-repo`.
2. Initialize Git (`git init`).
3. Add a file `about-me.txt` with:

   * Your full name
   * Why you are learning Git/GitHub
4. Stage and commit the file.
5. Push the repository to GitHub.
6. **Submission:** Post your GitHub repo link in the "intro to git and github" channel on Discord (invite: https://discord.gg/CP6vJQbA8S).

### Rubric (100 pts)

* Repo created and initialized: 20 pts
* File `about-me.txt` created with correct content: 30 pts
* File committed locally: 20 pts
* Repo pushed to GitHub successfully: 20 pts
* Submission link provided: 10 pts