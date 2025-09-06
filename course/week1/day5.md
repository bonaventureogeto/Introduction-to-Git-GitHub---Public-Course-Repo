# 🗓 Week 1 – Foundations of Git

## Day 5: Branching Basics

### 🎯 Milestones

* Understand what branches are and why we use them.
* Create and switch between branches.
* Make changes on a branch without affecting `main`.
* Push branches to GitHub.

---

## 1. Why Do We Need Branches?

Think of a branch as a **parallel timeline** for your project.

* The **`main` branch** → your official, stable project (like the published version).
* A **feature branch** → a safe place to work on a new idea, bug fix, or experiment.

👉 Benefits:

* You don’t “break” the main version while experimenting.
* Team members can work on different features at the same time.
* Changes only merge into `main` after review.

> Real-world example: If you’re building a website, `main` has the live site, while `feature-login` is where you add a login system.

---

## 2. Checking Current Branch

Run:

```bash
git branch
```

**Screenshot Example:**

```
* main
```

The `*` means you’re currently on the `main` branch.

---

## 3. Creating a New Branch

To create a branch called `feature-intro`:

```bash
git branch feature-intro
```

Check branches again:

```bash
git branch
```

**Screenshot Example:**

```
* main
  feature-intro
```

👉 The new branch exists, but you’re still on `main`.

---

## 4. Switching to a Branch

Switch to your new branch:

```bash
git checkout feature-intro
```

**Screenshot Example:**

```
Switched to branch 'feature-intro'
```

Check again:

```bash
git branch
```

```
  main
* feature-intro
```

Now you’re working on `feature-intro`.

---

## 5. Making Changes on a Branch

1. Create a new file:

   ```bash
   echo "Here are my hobbies: coding, reading, music." > hobbies.txt
   ```
2. Stage and commit:

   ```bash
   git add hobbies.txt
   git commit -m "Add hobbies.txt with personal hobbies"
   ```

👉 This change exists **only** on `feature-intro`.

---

## 6. Switching Back to `main`

Switch to `main`:

```bash
git checkout main
```

Notice:

* The `hobbies.txt` file disappears (because it wasn’t committed in `main`).
* But don’t panic — it’s still safe in `feature-intro`.

Switch back:

```bash
git checkout feature-intro
```

And the file reappears! 🎉

---

## 7. Pushing Branches to GitHub

Push your new branch to GitHub:

```bash
git push -u origin feature-intro
```

**Screenshot Example:**

```
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Writing objects: 100% (3/3), 350 bytes | 350.00 KiB/s, done.
 * [new branch]      feature-intro -> feature-intro
branch 'feature-intro' set up to track 'origin/feature-intro'.
```

Now, if you check your repo on GitHub, you’ll see **two branches**: `main` and `feature-intro`.

---

## 8. Summary

* **Branches = separate timelines** for development.
* Use branches to safely experiment without breaking `main`.
* Switch back and forth with `git checkout`.
* Push branches to GitHub so others can collaborate.

---

## 📝 Assignment: Day 5

1. In your `my-first-repo`:

   * Create a branch `feature-intro`.
   * Add a file `hobbies.txt` listing 3–5 of your hobbies.
   * Commit and push the branch to GitHub.
2. Switch back to `main` and confirm the file is missing there.
3. Switch again to `feature-intro` and confirm the file appears.
4. **Submission:** Post the **GitHub repo link** and both branch names in the "intro to git and github" channel on Discord (invite: https://discord.gg/CP6vJQbA8S). Please include:

```
main
feature-intro
```
     feature-intro  
     ```

**Rubric (100 pts)**

* Branch created locally: 20 pts
* File `hobbies.txt` created and committed in branch: 30 pts
* Branch pushed to GitHub: 30 pts
* Branch names provided in submission: 20 pts