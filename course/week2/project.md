# 🗓 Week 2 Project – Team Mini-Wiki

### 🎯 Project Goals

By the end of this project, you will:

* Work as part of a team using GitHub.
* Use branches, commits, and pull requests for collaboration.
* Review and approve a teammate’s pull request.
* Manage Issues to organize work.
* Deliver a group project with contributions from multiple team members.

---

## 1. Project Overview

You and your teammates will create a **Mini-Wiki**: a simple repository with multiple Markdown pages. Each person is responsible for writing one page (topic) and contributing it through GitHub.

The project will simulate **how professional teams collaborate**:

* Issues will track tasks.
* Branches will isolate work.
* PRs will request reviews.
* Reviews and merges will finalize the project.

---

## 2. Team Setup

1. Form teams of 2–4 students.
2. Choose one person to create a **GitHub repository** named `mini-wiki`.

   * Initialize with a `README.md` containing the project title and team members.
3. Other teammates fork the repo to their own GitHub accounts.

---

## 3. Defining Wiki Pages

Each teammate will create **one page** (Markdown file, `.md`):

* `intro.md` → Introduce the purpose of the mini-wiki.
* `history.md` → A short history of technology or programming.
* `tools.md` → Tools/software engineers use.
* (Optional) `future.md` → Future of software engineering.

---

## 4. Workflow Steps

### Step 1: Create Issues

For each page, create an Issue. Example:

```
Title: Write intro.md
Description: Add a page that introduces the purpose of the mini-wiki.
Assignee: John Doe
```

👉 This ensures **every page is tracked as a task**.

---

### Step 2: Create Branches

Each teammate works on a branch:

```bash
git checkout -b feature-intro
```

Example branch names:

* `feature-intro`
* `feature-history`
* `feature-tools`
* `feature-future`

---

### Step 3: Write Content

Edit your assigned file, e.g.:

```markdown
# Introduction
This mini-wiki explains basic concepts in software engineering for beginners.
```

Stage, commit, and push:

```bash
git add intro.md
git commit -m "Add intro.md (fixes #1)"
git push -u origin feature-intro
```

---

### Step 4: Open a Pull Request

On GitHub:

* Open a PR from your branch → `main`.
* Title: `Add intro.md`
* Description: Explain what you wrote and link the Issue (`fixes #1`).
* Request a review from at least **one teammate**.

---

### Step 5: Review & Merge

Each teammate must **review at least one PR**:

* Leave a comment (e.g., suggestion, feedback).
* Approve if it looks good.

Once approved, merge the PR.

---

### Step 6: Organize with a Project Board

Create a GitHub Project Board with:

* **To Do** → Open Issues
* **In Progress** → Assigned branches
* **Done** → Closed Issues

👉 Drag Issues across as the team works.

---

## 5. Final Deliverable

At the end, your `main` branch should have:

* `README.md` with team info.
* `intro.md`, `history.md`, `tools.md` (and optional `future.md`).
* Closed Issues for each page.
* A Project Board showing completed tasks.

---

## 6. Submission Instructions

Each team submits **one project**:

1. GitHub repo link (`mini-wiki`).
2. At least **3 Pull Request links** (one per teammate).
3. Project Board link.
4. Each student must indicate **which file/page** they contributed.

---

## 7. Rubric (100 pts)

* Issues created for each page: 20 pts
* Branches created & named properly: 20 pts
* PRs opened with clear titles & descriptions: 20 pts
* Peer reviews completed: 20 pts
* Project Board maintained & links submitted: 20 pts

---

✅ By completing this project, you will have simulated a **real-world GitHub team project**. You now know how professional developers collaborate on open-source or company projects.