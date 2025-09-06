# 🗓 Week 2 – Collaboration & Professional Workflow

## Day 8: Collaboration Workflows (Fork & Clone)

### 🎯 Milestones

* Understand the difference between **cloning** and **forking**.
* Fork a repository and make changes in your own copy.
* Contribute changes by opening a Pull Request.

---

## 1. Cloning vs. Forking

* **Clone** → makes a **local copy** of a repository you already have access to.
* **Fork** → creates your **own copy on GitHub** under your account. You don’t need write access to the original repo.

👉 In open source, you always **fork first**, then propose changes via Pull Request.

**Visual:**

```
Original Repo → Fork (your GitHub) → Clone (your computer) → PR → Back to Original
```

---

## 2. Forking a Repository

1. Visit the class repo provided by your instructor (e.g., `collab-repo`).
2. On GitHub, click **Fork** (top-right).

   * This creates a copy under **your account**.

**Screenshot Example (GitHub button):**

```
Fork this repository to your own GitHub account
[✓] Create fork
```

3. Now you have:

   * Original repo: `github.com/instructor/collab-repo`
   * Your fork: `github.com/your-username/collab-repo`

---

## 3. Cloning Your Fork Locally

From your fork:

```bash
git clone https://github.com/<your-username>/collab-repo.git
cd collab-repo
```

**Screenshot Example:**

```
Cloning into 'collab-repo'...
remote: Enumerating objects: 5, done.
Receiving objects: 100% (5/5), done.
```

---

## 4. Creating a Feature Branch

Work on a branch in your fork:

```bash
git checkout -b feature-add-name
```

Edit the file `students.md` and add your name:

```
- John Doe
```

Stage, commit, and push:

```bash
git add students.md
git commit -m "Add John Doe to students list"
git push -u origin feature-add-name
```

---

## 5. Opening a Pull Request to Your Fork

On GitHub, open a PR from `feature-add-name → main` **inside your fork**.

**Screenshot Example:**

```
Compare & pull request
Base: main (your repo)
Compare: feature-add-name
```

---

## 6. (Optional Advanced) Contributing to the Original Repo

If the instructor allows outside PRs, you can also:

1. Change the **base repository** when opening the PR.

   * Base repo: `instructor/collab-repo`
   * Base branch: `main`
   * Compare: `feature-add-name` (from your fork)
2. This creates a PR **into the instructor’s repo** 🎉

---

## 7. Summary

* **Forking** → creates your personal copy of a repo on GitHub.
* **Cloning** → downloads a GitHub repo to your computer.
* Always use branches when making contributions.
* Contributions flow back to the **original repo** via PRs.

---

## 📝 Assignment: Day 8

1. Fork the class repo `collab-repo` (provided by instructor).
2. Clone your fork locally.
3. Create a new branch `feature-add-name`.
4. Edit `students.md` and add your name to the list.
5. Commit and push changes.
6. Open a Pull Request in **your fork**.
7. (Optional advanced) Open a PR to the original `collab-repo`.
8. **Submission:** Submit the **link to your Pull Request** in the LMS.

**Rubric (100 pts)**

* Repo forked successfully: 20 pts
* Repo cloned locally: 20 pts
* Branch created & changes made: 20 pts
* PR opened in your fork: 30 pts
* PR link submitted: 10 pts

---

✅ By completing this lesson, you’ve practiced the **standard open-source workflow** used in GitHub projects worldwide.