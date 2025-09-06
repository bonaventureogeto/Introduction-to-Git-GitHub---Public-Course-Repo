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

1. Visit the class repository provided by your instructor. For this course use:

   https://github.com/bonaventureogeto/Introduction-to-Git-GitHub---Public-Course-Repo
2. On GitHub, click **Fork** (top-right).

   * This creates a copy under **your account**.

**Screenshot Example (GitHub button):**

```
Fork this repository to your own GitHub account
[✓] Create fork
```

3. Now you have:

   * Original repo (class repo): `github.com/bonaventureogeto/Introduction-to-Git-GitHub---Public-Course-Repo`
   * Your fork: `github.com/<your-username>/Introduction-to-Git-GitHub---Public-Course-Repo`

---

## 3. Cloning Your Fork Locally

From your fork (recommended):

```bash
# after clicking Fork on the class repo, clone your fork to your machine
git clone https://github.com/<your-username>/Introduction-to-Git-GitHub---Public-Course-Repo.git
cd Introduction-to-Git-GitHub---Public-Course-Repo
```

If you want to try a quick demo without forking first, you can clone the original class repo directly (read-only):

```bash
git clone https://github.com/bonaventureogeto/Introduction-to-Git-GitHub---Public-Course-Repo.git
cd Introduction-to-Git-GitHub---Public-Course-Repo
```

**Screenshot Example:**

```
Cloning into 'Introduction-to-Git-GitHub---Public-Course-Repo'...
remote: Enumerating objects: 5, done.
Receiving objects: 100% (5/5), done.
```

---

## 4. Creating a Feature Branch

Work on a branch in your fork:

```bash
git checkout -b feature-add-name
```

Edit the file `students.md` and add your name (one list item). Keep the formatting consistent, e.g.:

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

5. Opening a Pull Request to Your Fork

On GitHub, open a PR from `feature-add-name` into `main` inside *your fork* (this is the normal flow when you don't have write access to the original repository).

Screenshot Example:

```
Compare & pull request
Base: main (your repo)
Compare: feature-add-name
```

Tips:

- Make the PR title descriptive (e.g., "Add John Doe to students list").
- Include a short description of your change and a reference to the assignment.
- Add yourself or a classmate as reviewer if requested by the instructor.

---

## 6. (Optional Advanced) Contributing to the Original Repo

If the instructor allows outside PRs, you can also:

1. Change the **base repository** when opening the PR to point at the class repo (only if the instructor allows outside PRs).

   * Base repo (example): `bonaventureogeto/Introduction-to-Git-GitHub---Public-Course-Repo`
   * Base branch: `main`
   * Compare: `your-username/feature-add-name` (from your fork)

2. This creates a PR **into the instructor’s repo** 🎉 — do this only when instructed.

---

## 7. Summary

* **Forking** → creates your personal copy of a repo on GitHub.
* **Cloning** → downloads a GitHub repo to your computer.
* Always use branches when making contributions.
* Contributions flow back to the **original repo** via PRs.

---

## 📝 Assignment: Day 8

1. Fork the class repo `Introduction-to-Git-GitHub---Public-Course-Repo` (provided by instructor):

   https://github.com/bonaventureogeto/Introduction-to-Git-GitHub---Public-Course-Repo
2. Clone your fork locally.
3. Create a new branch `feature-add-name`.
4. Edit `students.md` and add your name to the list.
5. Commit and push changes.
6. Open a Pull Request in **your fork**.
7. (Optional advanced) Open a PR to the original `Introduction-to-Git-GitHub---Public-Course-Repo`.
8. **Submission:** Post the **link to your Pull Request** in the "intro to git and github" channel on Discord (invite: https://discord.gg/CP6vJQbA8S).

**Rubric (100 pts)**

* Repo forked successfully: 20 pts
* Repo cloned locally: 20 pts
* Branch created & changes made: 20 pts
* PR opened in your fork: 30 pts
* PR link submitted: 10 pts

---

✅ By completing this lesson, you’ve practiced the **standard open-source workflow** used in GitHub projects worldwide.