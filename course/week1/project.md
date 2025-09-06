# 🗓 Week 1 Project – Personal Profile Repository

### 🎯 Project Goals

By the end of this project, you will:

* Create a complete Git repository from scratch.
* Practice branching, committing, and pushing to GitHub.
* Write a professional `README.md`.
* Submit your work via a **Pull Request (PR)**.

---

## 1. Project Overview

You will build a **Personal Profile Repository** on GitHub. This project will act as your digital “intro card” and also prove that you can:

* Initialize and configure a repo.
* Use commits and branches effectively.
* Push and manage your repo on GitHub.
* Create and merge pull requests.

At the end, you’ll have a polished GitHub repo that introduces who you are.

---

## 2. Step-by-Step Instructions

### Step 1: Create the Repository

1. On GitHub, create a new repo named **student-profile**.

   * Do **not** initialize with a README (we’ll add one locally).
2. Clone it to your computer:

   ```bash
   git clone https://github.com/<your-username>/student-profile.git
   cd student-profile
   ```

---

### Step 2: Add Your README.md

Create a `README.md` file with:

* Your full name
* A short bio (2–3 sentences)
* Your learning goals for this course

Example:

```markdown
# John Doe – Personal Profile

Hello! My name is John Doe. I’m learning software engineering because I want to build apps that solve real-world problems.  

## Learning Goals
- Understand Git & GitHub fundamentals  
- Learn Python and Django  
- Build and deploy a real-world project  
```

Add and commit it:

```bash
git add README.md
git commit -m "Add README.md with bio and learning goals"
git push origin main
```

---

### Step 3: Create a Branch for Updates

Create and switch to a new branch:

```bash
git checkout -b feature-update
```

On this branch, add a new section to `README.md`:

```markdown
## Favorite Tech Tools
- VS Code
- Git & GitHub
- Linux Terminal
```

Commit your changes:

```bash
git add README.md
git commit -m "Add favorite tech tools section"
git push origin feature-update
```

---

### Step 4: Open a Pull Request

1. Go to your GitHub repo online.
2. Open a Pull Request (PR) from `feature-update` → `main`.
3. Fill in the PR template (summary, checklist, etc.).
4. Request a review from your instructor (or tag them).

---

### Step 5: Merge the PR

Once approved, merge the PR into `main`.
Now your profile repo has two commits:

1. Initial `README.md` with bio.
2. Update with favorite tech tools.

---

## 3. Submission Instructions

1. Ensure your repo is on GitHub and has:

   * `main` branch (with final merged changes).
   * `feature-update` branch (where you created the PR).
2. Post the **link to your GitHub repository** in the "intro to git and github" channel on Discord (invite: https://discord.gg/CP6vJQbA8S).
3. Post the **link to your Pull Request** (even if already merged) in the same channel.

---

## 4. Rubric (100 pts)

* Repo created and cloned correctly: 20 pts
* README.md created with bio and goals: 20 pts
* Feature branch created and updated: 20 pts
* PR opened, filled with template, and merged: 30 pts
* Correct links posted in Discord: 10 pts

---

✅ By completing this project, you will have proven mastery of everything from Week 1:

* Repo creation, staging, committing, pushing, branching, and pull requests.