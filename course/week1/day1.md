# 🗓 Week 1 – Foundations of Git

## Day 1: What is Git & Why Version Control Matters

### 📚 Learning Objectives

By the end of this lesson, you will be able to:

* Explain what version control is and why it's essential for software development
* Understand the difference between Git and GitHub
* Install Git on your operating system (Windows, macOS, or Linux)
* Configure your Git identity (username and email)
* Initialize your first Git repository
* Create and push your first commit to GitHub
* Navigate the basic Git workflow

### ⏱️ Estimated Time

**45-60 minutes** (30 minutes for reading/understanding + 15-30 minutes for hands-on practice)

### 🎯 Prerequisites

* No prior knowledge required! This is Day 1.
* A computer with administrator access to install software
* An internet connection to download Git and create a GitHub account

### 🎯 Milestones

* Understand version control concepts.
* Install Git and configure your username and email.

---

## 1. What is Version Control?

Imagine you’re writing an essay and want to save every draft. You create **v1.docx**, **v2.docx**, and so on. Very quickly, it gets confusing to know what changed and which is the latest.

**Version control systems (VCS)** solve this problem for software projects. They:

* Track **every change** you make to your code.
* Allow you to **go back in time** if something breaks.
* Enable **collaboration**, so multiple developers can work on the same project without overwriting each other’s work.

👉 **Git** is the most popular version control system in the world.
👉 **GitHub** is a cloud platform where Git repositories can be stored and shared.

### 🔍 Behind the Scenes: How Git Works

When you run `git init`, Git creates a hidden `.git` folder in your project directory. This folder is the "brain" of your repository and contains:

* **Objects database**: Stores all your file contents, commits, and directory structures
* **Refs**: Pointers to commits (branches and tags)
* **HEAD**: Points to the current branch you're working on
* **Config**: Repository-specific configuration
* **Index**: The staging area (what you `git add` before committing)

```text
.git/
├── objects/      ← All your commits and file data (compressed)
├── refs/
│   └── heads/    ← Branch pointers (main, feature-x, etc.)
├── HEAD          ← Points to current branch
├── config        ← Repository settings
└── index         ← Staging area
```

**Key Concept**: Git doesn't store differences between files—it stores complete snapshots. Each commit is a full snapshot of your project at that moment, but Git is smart about saving space by only storing unique content once.

---

## 2. Installing Git

* **Windows:** Download from [git-scm.com](https://git-scm.com/download/win). Run the installer and accept defaults.
* **macOS:** Run in terminal:

  ```bash
  brew install git
  ```

* **Linux (Ubuntu/Debian):**

  ```bash
  sudo apt update
  sudo apt install git
  ```

### Verify Installation

After installation, check the version:

```bash
git --version
```

If Git is installed correctly, you’ll see something like:

```text
git version 2.44.0
```

---

## 3. Configuring Git (Name & Email)

Git tags every change (commit) with your name and email. This is how collaborators know **who** made changes.

Set your name and email once (globally):

```bash
git config --global user.name "Your Full Name"
git config --global user.email "your.email@example.com"
```

Check your configuration:

```bash
git config --list
```

You should see:

```text
user.name=Your Full Name
user.email=your.email@example.com
```

---

## 4. Your First Repository

Let’s create your first Git project.

1. Open a terminal and create a new folder:

   ```bash
   mkdir git-basics
   cd git-basics
   ```

2. Initialize Git in this folder:

   ```bash
   git init
   ```

   This creates a hidden `.git` folder to track changes.

---

## 5. Making Your First Commit

1. Create a new file:

   ```bash
   echo "Git is installed!" > setup.txt
   ```

2. Tell Git to track it:

   ```bash
   git add setup.txt
   ```

3. Save a snapshot (commit):

   ```bash
   git commit -m "Initial commit: Added setup confirmation"
   ```

---

## 6. Connecting to GitHub

1. Create a new empty repository on GitHub called **git-basics**.

   * Do **not** initialize with a README (since we already have local files).
2. Copy the repo URL (HTTPS recommended).
3. Link your local repo to GitHub:

   ```bash
   git remote add origin https://github.com/username/git-basics.git
   ```

4. Push your commit:

   ```bash
   git branch -M main
   git push -u origin main
   ```

Your repo is now live on GitHub 🎉

---

## 🌍 Real-World Examples

### Example 1: Software Development Team

```bash
# Developer A creates a new feature
git clone https://github.com/company/product.git
cd product
git checkout -b feature-user-auth
# ... make changes ...
git add .
git commit -m "Add user authentication system"
git push origin feature-user-auth
```

**Output:**

```text
Enumerating objects: 15, done.
Counting objects: 100% (15/15), done.
Delta compression using up to 8 threads
Compressing objects: 100% (10/10), done.
Writing objects: 100% (10/10), 2.45 KiB | 2.45 MiB/s, done.
Total 10 (delta 5), reused 0 (delta 0)
To https://github.com/company/product.git
 * [new branch]      feature-user-auth -> feature-user-auth
```

### Example 2: Personal Portfolio Website

```bash
# Initialize a new website project
mkdir my-portfolio
cd my-portfolio
git init
echo "# John Doe - Web Developer" > README.md
git add README.md
git commit -m "Initial commit: Add project README"
```

**Output:**

```text
Initialized empty Git repository in /Users/john/my-portfolio/.git/
[main (root-commit) a1b2c3d] Initial commit: Add project README
 1 file changed, 1 insertion(+)
 create mode 100644 README.md
```

### Example 3: Open Source Contribution

```bash
# Fork and clone a popular open source project
git clone https://github.com/yourusername/awesome-project.git
cd awesome-project
# Configure upstream
git remote add upstream https://github.com/original-author/awesome-project.git
git fetch upstream
```

**Output:**

```text
Cloning into 'awesome-project'...
remote: Enumerating objects: 1250, done.
remote: Counting objects: 100% (1250/1250), done.
remote: Compressing objects: 100% (642/642), done.
Receiving objects: 100% (1250/1250), 2.45 MiB | 3.12 MiB/s, done.
```

### Example 4: Configuration Files Management

```bash
# Track dotfiles (configuration files)
cd ~
git init dotfiles
cd dotfiles
cp ~/.bashrc .
cp ~/.vimrc .
git add .bashrc .vimrc
git commit -m "Add bash and vim configuration"
```

### Example 5: Writing Documentation

```bash
# Start a documentation project
mkdir project-docs
cd project-docs
git init
echo "# API Documentation" > api.md
echo "# User Guide" > user-guide.md
git add *.md
git commit -m "Initial documentation structure"
```

---

## 📊 ASCII Diagrams

### The Git Workflow

```text
 Working Directory        Staging Area           Repository (.git)
 ┌─────────────┐         ┌──────────┐           ┌─────────────┐
 │             │         │          │           │             │
 │  file.txt   │ git add │ file.txt │git commit │   Commit 1  │
 │  (modified) ├────────>│ (staged) ├──────────>│   Commit 2  │
 │             │         │          │           │   Commit 3  │
 └─────────────┘         └──────────┘           └─────────────┘
```

### How Git Commits Work

```text
Commit Structure:
┌────────────────────────────┐
│  Commit: a1b2c3d           │
├────────────────────────────┤
│  Author: John Doe          │
│  Date: 2025-01-15          │
│  Message: "Add login page" │
│  Parent: e4f5g6h            │
│  Tree: [snapshot of files] │
└────────────────────────────┘
         │
         ├─> Points to parent commit
         │
         └─> Contains entire project snapshot
```

### Local vs Remote Repository

```text
    Your Computer               │           GitHub/Cloud
                                │
 ┌──────────────────┐          │      ┌──────────────────┐
 │  Local Repo      │  git push│      │  Remote Repo     │
 │  .git/           ├──────────┼─────>│  origin/main     │
 │  main branch     │          │      │                  │
 │                  │  git pull│      │                  │
 │                  │<─────────┼──────┤                  │
 └──────────────────┘          │      └──────────────────┘
```

---

## ⚠️ Common Mistakes & Troubleshooting

| Problem | Symptom | Solution |
|---------|---------|----------|
| **Forgot to configure user** | `fatal: unable to auto-detect email address` | Run `git config --global user.email "your@email.com"` |
| **Already initialized Git** | `Reinitialized existing Git repository` | This is safe to ignore, or delete `.git` folder and start over |
| **Wrong GitHub URL** | `remote: Repository not found` | Check URL spelling, verify repo exists, ensure you have access |
| **Not in correct directory** | `fatal: not a git repository` | Use `cd` to navigate to your project folder first |
| **Forgot to add files** | Commit is empty or files not tracked | Run `git add <filename>` or `git add .` before committing |
| **Permission denied (SSH)** | `Permission denied (publickey)` | Use HTTPS URL instead, or set up SSH keys (covered later) |
| **Branch name conflict** | `error: refname refs/heads/main not found` | Use `git branch -M main` to rename current branch |
| **Spaces in commit message** | Commit message appears truncated | Use quotes: `git commit -m "Your message here"` |

---

## 💡 Pro Tips

1. **Use `.gitignore` early**: Create a `.gitignore` file to exclude sensitive files, build artifacts, and dependencies

   ```bash
   # Example .gitignore
   node_modules/
   .env
   *.log
   .DS_Store
   ```

2. **Commit early, commit often**: Small, frequent commits are better than large, infrequent ones
3. **Write meaningful commit messages**: Use present tense, be descriptive: "Add user authentication" not "added stuff"
4. **Check status before committing**: Always run `git status` to see what you're about to commit
5. **Use HTTPS initially**: HTTPS is easier for beginners; you can switch to SSH later
6. **Keep main branch clean**: Always test your code before committing to main
7. **Use `git log --oneline`**: Get a quick overview of your commit history
8. **Alias common commands**: Speed up your workflow with aliases:

   ```bash
   git config --global alias.st status
   git config --global alias.co checkout
   git config --global alias.cm commit
   ```

---

## 🧪 Practice Problems

<details>
<summary>Problem 1: First Repository (Beginner)</summary>

**Task**: Create a repository called `hello-git` with a file `greeting.txt` containing "Hello, Git!".

**Solution**:

```bash
mkdir hello-git
cd hello-git
git init
echo "Hello, Git!" > greeting.txt
git add greeting.txt
git commit -m "Add greeting file"
```

**Verification**:

```bash
git log --oneline
# Should show: abc1234 Add greeting file
```

</details>

<details>
<summary>Problem 2: Configuration Check (Beginner)</summary>

**Task**: Verify your Git configuration is set correctly and display all configuration settings.

**Solution**:

```bash
# Check specific settings
git config user.name
git config user.email

# List all settings
git config --list

# Check global settings location
git config --list --show-origin
```

**Expected Output**:

```text
user.name=Your Name
user.email=your.email@example.com
```

</details>

<details>
<summary>Problem 3: Multiple Files (Intermediate)</summary>

**Task**: Create a repository with three files: `index.html`, `style.css`, and `README.md`. Commit them all at once.

**Solution**:

```bash
mkdir web-project
cd web-project
git init
echo "<!DOCTYPE html><html></html>" > index.html
echo "body { margin: 0; }" > style.css
echo "# My Web Project" > README.md
git add .
git commit -m "Initial project structure"
```

**Verification**:

```bash
git status
# Should show: nothing to commit, working tree clean
git ls-files
# Should list all three files
```

</details>

<details>
<summary>Problem 4: Fixing Wrong Email (Intermediate)</summary>

**Task**: You committed with the wrong email address. Change it and amend your last commit.

**Solution**:

```bash
# Change your email
git config --global user.email "correct.email@example.com"

# Amend the last commit with new author info
git commit --amend --reset-author --no-edit
```

**Verification**:

```bash
git log --format="%an <%ae>" -1
# Should show your new email
```

</details>

<details>
<summary>Problem 5: Pushing to GitHub (Advanced)</summary>

**Task**: Create a local repository with 3 commits, create a GitHub repository, and push all commits.

**Solution**:

```bash
# Local setup
mkdir git-practice
cd git-practice
git init

# Commit 1
echo "# Git Practice" > README.md
git add README.md
git commit -m "Add README"

# Commit 2
echo "console.log('Hello');" > app.js
git add app.js
git commit -m "Add JavaScript file"

# Commit 3
echo "Testing Git" > notes.txt
git add notes.txt
git commit -m "Add notes"

# Connect to GitHub (create repo on GitHub first)
git remote add origin https://github.com/yourusername/git-practice.git
git branch -M main
git push -u origin main
```

**Verification**: Visit your GitHub repository and confirm all 3 commits are visible.

</details>

---

## 📋 Quick Reference Table

| Command | Description | Example |
|---------|-------------|---------|
| `git --version` | Check Git installation and version | `git --version` |
| `git config --global user.name "Name"` | Set your name globally | `git config --global user.name "Jane Smith"` |
| `git config --global user.email "email"` | Set your email globally | `git config --global user.email "jane@example.com"` |
| `git config --list` | View all Git configuration | `git config --list` |
| `git init` | Initialize a new Git repository | `git init` |
| `git add <file>` | Stage a file for commit | `git add README.md` |
| `git add .` | Stage all changes | `git add .` |
| `git commit -m "message"` | Create a commit with message | `git commit -m "Initial commit"` |
| `git status` | Check repository status | `git status` |
| `git log` | View commit history | `git log --oneline` |
| `git remote add origin <url>` | Link to remote repository | `git remote add origin https://github.com/user/repo.git` |
| `git push -u origin main` | Push commits to remote | `git push -u origin main` |

---

## 💻 Platform-Specific Commands

### Windows (Command Prompt)

```cmd
REM Check Git version
git --version

REM Create directory and navigate
mkdir git-basics
cd git-basics

REM Create file with content
echo Git is installed! > setup.txt
```

### Windows (PowerShell)

```powershell
# Check Git version
git --version

# Create directory and navigate
New-Item -ItemType Directory -Name git-basics
Set-Location git-basics

# Create file with content
"Git is installed!" | Out-File -FilePath setup.txt
```

### macOS/Linux (Bash/Zsh)

```bash
# Check Git version
git --version

# Create directory and navigate
mkdir git-basics
cd git-basics

# Create file with content
echo "Git is installed!" > setup.txt
```

---

## 📝 Assignment: Day 1

1. Install Git and run `git --version`.
2. Configure your global `user.name` and `user.email`.
3. Create a new repository `git-basics` on GitHub.
4. Locally, initialize `git-basics` and commit a file (`setup.txt`) that contains:

   ```text
   Git installation successful!
   ```

5. Push your changes to GitHub.
6. **Submission:**

   * Share the **GitHub repository link** on [Discord](https://discord.gg/CP6vJQbA8S).
   * The repo should contain your `setup.txt` file and the first commit.

### Rubric (100 pts)

* Git installed & version screenshot: 20 pts
* Configured name/email: 20 pts
* Repo initialized & file committed: 30 pts
* Repo pushed to GitHub: 20 pts
* Submission link provided: 10 pts
