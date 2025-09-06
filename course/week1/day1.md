# 🗓 Week 1 – Foundations of Git

## Day 1: What is Git & Why Version Control Matters

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

```
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

```
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

## 📝 Assignment: Day 1

1. Install Git and run `git --version`.
2. Configure your global `user.name` and `user.email`.
3. Create a new repository `git-basics` on GitHub.
4. Locally, initialize `git-basics` and commit a file (`setup.txt`) that contains:

   ```
   Git installation successful!
   ```
5. Push your changes to GitHub.
6. **Submission:**

   * Share the **GitHub repository link** on [Discord](https://discord.gg/CP6vJQbA8S).
   * The repo should contain your `setup.txt` file and the first commit.

**Rubric (100 pts)**

* Git installed & version screenshot: 20 pts
* Configured name/email: 20 pts
* Repo initialized & file committed: 30 pts
* Repo pushed to GitHub: 20 pts
* Submission link provided: 10 pts