# 📝 Week 1 Quiz - Foundations of Git

Test your understanding of Git basics, repositories, branching, and workflows.

**Instructions:**
* Answer all questions
* Check your answers using the collapsible solutions
* Score: Each question is worth equal points (total 100 points for 25 questions)
* Passing grade: 70%

---

## Part 1: Multiple Choice (Questions 1-15)

### Question 1

What is the main purpose of Git?

A) To store files in the cloud  
B) To track changes in files over time  
C) To edit code  
D) To compile programs  

<details>
<summary>Show Answer</summary>

**Answer: B) To track changes in files over time**

Git is a version control system that tracks and manages changes to files throughout their history.

</details>

---

### Question 2

What is the difference between Git and GitHub?

A) They are the same thing  
B) Git is a tool, GitHub is a hosting service  
C) GitHub is newer than Git  
D) Git only works with GitHub  

<details>
<summary>Show Answer</summary>

**Answer: B) Git is a tool, GitHub is a hosting service**

Git is version control software that runs locally. GitHub is a cloud platform for hosting Git repositories and enabling collaboration.

</details>

---

### Question 3

Which command initializes a new Git repository?

A) `git start`  
B) `git create`  
C) `git init`  
D) `git new`  

<details>
<summary>Show Answer</summary>

**Answer: C) `git init`**

The `git init` command creates a new `.git` directory in your project folder, initializing Git tracking.

</details>

---

### Question 4

What does the staging area do?

A) Stores all your commits  
B) Holds changes before committing  
C) Backs up your files  
D) Connects to GitHub  

<details>
<summary>Show Answer</summary>

**Answer: B) Holds changes before committing**

The staging area (index) is an intermediate layer where you prepare changes before creating a commit.

</details>

---

### Question 5

Which command stages ALL changes for commit?

A) `git add *`  
B) `git add -A`  
C) `git stage all`  
D) `git commit -a`  

<details>
<summary>Show Answer</summary>

**Answer: B) `git add -A`**

The `-A` flag stages all changes (new, modified, and deleted files) throughout the repository.

</details>

---

### Question 6

What is a commit in Git?

A) A backup of your files  
B) A snapshot of your project at a specific time  
C) A branch  
D) A connection to GitHub  

<details>
<summary>Show Answer</summary>

**Answer: B) A snapshot of your project at a specific time**

A commit captures the complete state of your project at a moment, including all tracked files and metadata.

</details>

---

### Question 7

Which command creates a commit?

A) `git save -m "message"`  
B) `git commit -m "message"`  
C) `git push -m "message"`  
D) `git create -m "message"`  

<details>
<summary>Show Answer</summary>

**Answer: B) `git commit -m "message"`**

The `-m` flag allows you to add a commit message inline.

</details>

---

### Question 8

What does `git status` show?

A) Your Git version  
B) Current branch and file states  
C) Commit history  
D) Remote repositories  

<details>
<summary>Show Answer</summary>

**Answer: B) Current branch and file states**

`git status` displays which branch you're on, staged changes, unstaged changes, and untracked files.

</details>

---

### Question 9

What is a branch in Git?

A) A copy of the repository  
B) A parallel line of development  
C) A backup  
D) A tag  

<details>
<summary>Show Answer</summary>

**Answer: B) A parallel line of development**

Branches allow you to work on different features or fixes independently without affecting the main codebase.

</details>

---

### Question 10

Which command creates a new branch?

A) `git branch <name>`  
B) `git new-branch <name>`  
C) `git create <name>`  
D) `git checkout <name>`  

<details>
<summary>Show Answer</summary>

**Answer: A) `git branch <name>`**

This creates a new branch but doesn't switch to it. Use `git checkout -b <name>` to create and switch in one command.

</details>

---

### Question 11

How do you switch to a different branch?

A) `git switch <branch>` or `git checkout <branch>`  
B) `git change <branch>`  
C) `git move <branch>`  
D) `git branch <branch>`  

<details>
<summary>Show Answer</summary>

**Answer: A) `git switch <branch>` or `git checkout <branch>`**

Both commands switch branches. `git switch` is the newer, more focused command introduced in Git 2.23.

</details>

---

### Question 12

What does `git clone` do?

A) Creates a new repository  
B) Copies a remote repository to your local machine  
C) Uploads your repository to GitHub  
D) Creates a branch  

<details>
<summary>Show Answer</summary>

**Answer: B) Copies a remote repository to your local machine**

`git clone` downloads a complete copy of a repository including all history and branches.

</details>

---

### Question 13

What is "origin" in Git?

A) The first commit  
B) The default name for a remote repository  
C) The main branch  
D) Your local repository  

<details>
<summary>Show Answer</summary>

**Answer: B) The default name for a remote repository**

"origin" is an alias for the remote repository URL, automatically created when you clone a repository.

</details>

---

### Question 14

Which command uploads your commits to GitHub?

A) `git upload`  
B) `git send`  
C) `git push`  
D) `git commit --remote`  

<details>
<summary>Show Answer</summary>

**Answer: C) `git push`**

`git push` sends your local commits to the remote repository.

</details>

---

### Question 15

What does `git pull` do?

A) Creates a new branch  
B) Downloads and merges remote changes  
C) Uploads your changes  
D) Deletes local changes  

<details>
<summary>Show Answer</summary>

**Answer: B) Downloads and merges remote changes**

`git pull` is equivalent to `git fetch` + `git merge`, getting updates from the remote and integrating them.

</details>

---

## Part 2: True/False (Questions 16-20)

### Question 16

**True or False:** You must use GitHub to use Git.

<details>
<summary>Show Answer</summary>

**Answer: False**

Git works completely offline on your local machine. GitHub is optional cloud hosting for Git repositories.

</details>

---

### Question 17

**True or False:** Once you commit changes, they are automatically uploaded to GitHub.

<details>
<summary>Show Answer</summary>

**Answer: False**

Commits are local. You must use `git push` to upload them to a remote repository like GitHub.

</details>

---

### Question 18

**True or False:** The `.git` folder stores all your repository's history and metadata.

<details>
<summary>Show Answer</summary>

**Answer: True**

The `.git` directory contains all commits, branches, configuration, and Git's database. Never delete it!

</details>

---

### Question 19

**True or False:** You can only have one branch in a Git repository.

<details>
<summary>Show Answer</summary>

**Answer: False**

You can create unlimited branches to work on different features, fixes, or experiments simultaneously.

</details>

---

### Question 20

**True or False:** `git add` and `git commit` are the same command.

<details>
<summary>Show Answer</summary>

**Answer: False**

`git add` stages changes (prepares them), while `git commit` saves them to the repository history. They're two separate steps.

</details>

---

## Part 3: Fill in the Blank (Questions 21-25)

### Question 21

To configure your name globally in Git, use: `git config --global user.name ___________`

<details>
<summary>Show Answer</summary>

**Answer:** `"Your Name"` (in quotes)

Example: `git config --global user.name "Jane Doe"`

</details>

---

### Question 22

To see the commit history in one line per commit, use: `git log ___________`

<details>
<summary>Show Answer</summary>

**Answer:** `--oneline`

Full command: `git log --oneline`

</details>

---

### Question 23

To create a new branch AND switch to it in one command: `git checkout ___________ branch-name`

<details>
<summary>Show Answer</summary>

**Answer:** `-b`

Full command: `git checkout -b branch-name`  
Or newer: `git switch -c branch-name`

</details>

---

### Question 24

The three main areas in Git workflow are: Working Directory, ___________, and Repository.

<details>
<summary>Show Answer</summary>

**Answer:** Staging Area (or Index)

**Workflow:**  
Working Directory → `git add` → Staging Area → `git commit` → Repository

</details>

---

### Question 25

To discard changes to a file in your working directory: `git checkout -- ___________` or `git restore ___________`

<details>
<summary>Show Answer</summary>

**Answer:** `<filename>`

Examples:
* `git checkout -- index.html`
* `git restore index.html`

</details>

---

## Scoring Guide

* **23-25 correct (92-100%)**: Excellent! You have a strong understanding of Git basics.
* **20-22 correct (80-88%)**: Very Good! Review areas where you made mistakes.
* **18-19 correct (72-76%)**: Good! You understand the core concepts but need more practice.
* **15-17 correct (60-68%)**: Pass, but review the material and try the quiz again.
* **Below 15 (below 60%)**: Review the Week 1 lessons and try again.

---

## Practice Exercises

If you scored below 80%, try these hands-on exercises:

### Exercise 1: Basic Repository

```bash
# Create and initialize
mkdir git-practice
cd git-practice
git init

# Create files
echo "Hello Git" > file1.txt
echo "Learning Git" > file2.txt

# Stage and commit
git add .
git commit -m "Initial commit"

# Verify
git status
git log --oneline
```

### Exercise 2: Branching Practice

```bash
# Create and switch to feature branch
git checkout -b feature-test

# Make changes
echo "New feature" > feature.txt
git add feature.txt
git commit -m "Add feature"

# Switch back to main
git checkout main

# Merge feature
git merge feature-test

# Clean up
git branch -d feature-test
```

### Exercise 3: Remote Repository

```bash
# Connect to remote (create empty repo on GitHub first)
git remote add origin https://github.com/yourusername/git-practice.git

# Push to remote
git branch -M main
git push -u origin main

# Verify
git remote -v
```

---

## Related Resources

* [Week 1 Course Materials](../../course/week1/)
* [Git Command Reference](../../docs/git-command-reference.md)
* [Glossary](../../docs/glossary.md)
* [FAQ](../../docs/faq.md)

---

## Next Steps

* If you scored well: Move on to [Week 2 Quiz](week2-quiz.md)
* Need more practice: Review Day 1-5 lessons and try the practical challenges
* Ready for hands-on: Try [Challenge 01: First Repository](../practical-challenges/challenge-01-first-repo.md)
