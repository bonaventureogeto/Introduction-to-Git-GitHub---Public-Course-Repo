# 🗓 Week 2 – Collaboration & Professional Workflow

## Day 6: Merging & Merge Conflicts

### 🎯 Milestones

* Learn how to merge branches into `main`.
* Understand what merge conflicts are and why they happen.
* Practice resolving conflicts safely.

---

## 1. What is a Merge?

When you finish working on a branch, you usually want to combine (merge) it back into `main`.

👉 Example:

* `feature-intro` has your new file `hobbies.txt`.
* You want those changes to appear in `main`.

---

## 2. Fast-Forward Merge

If `main` has not changed since you branched off, Git can simply “fast-forward” the branch pointer.

Example:

```bash
git checkout main
git merge feature-intro
```

**Screenshot Example:**

```
Updating f2b4c3a..9d2a6e1
Fast-forward
 hobbies.txt | 1 +
 1 file changed, 1 insertion(+)
```

👉 Now `main` includes the file from `feature-intro`.

---

## 3. When Do Conflicts Happen?

A **merge conflict** happens when:

* Two branches edit the **same line** of the same file.
* Git doesn’t know which version to keep.

👉 Example:

* `main` says:

  ```
  My favorite color is blue.
  ```
* `feature-style` says:

  ```
  My favorite color is green.
  ```

Git can’t decide between “blue” or “green” — so it asks **you** to fix it.

---

## 4. Creating a Merge Conflict (Practice)

1. Checkout `main` and edit `about-me.txt`:

   ```bash
   echo "My favorite color is blue." >> about-me.txt
   git add about-me.txt
   git commit -m "Add favorite color as blue"
   ```
2. Switch to `feature-conflict` branch:

   ```bash
   git checkout -b feature-conflict
   ```
3. Edit the same line but change the color:

   ```bash
   echo "My favorite color is green." > about-me.txt
   git add about-me.txt
   git commit -m "Change favorite color to green"
   ```
4. Switch back to `main` and try to merge:

   ```bash
   git checkout main
   git merge feature-conflict
   ```

**Screenshot Example:**

```
Auto-merging about-me.txt
CONFLICT (content): Merge conflict in about-me.txt
Automatic merge failed; fix conflicts and then commit the result.
```

---

## 5. Resolving a Merge Conflict

Open `about-me.txt` and you’ll see:

```text
<<<<<<< HEAD
My favorite color is blue.
=======
My favorite color is green.
>>>>>>> feature-conflict
```

* The section between `<<<<<<< HEAD` and `=======` is from `main`.
* The section between `=======` and `>>>>>>> feature-conflict` is from the other branch.

👉 Choose one version, or combine them:

```text
My favorite colors are blue and green.
```

Then:

```bash
git add about-me.txt
git commit -m "Resolve merge conflict by combining color preferences"
```

**Screenshot Example:**

```
[main 7a8b9d2] Resolve merge conflict by combining color preferences
```

---

## 6. Summary

* **Fast-forward merge** → no conflicts.
* **Conflicts** happen when the same line is edited in different ways.
* Git shows markers (`<<<<<<<`, `=======`, `>>>>>>>`) to help you resolve conflicts.
* Always **review carefully** before committing the resolution.

---

## 📝 Assignment: Day 6

1. In your `my-first-repo`:

   * On `main`, add a line to `about-me.txt`: “My favorite programming language is Python.” Commit.
   * Create a branch `feature-conflict` and change the line to: “My favorite programming language is JavaScript.” Commit.
   * Merge `feature-conflict` into `main` to trigger a conflict.
   * Resolve the conflict by keeping **both languages** in the file. Commit the resolution.
   * Push the updated repo to GitHub.
2. **Submission:** Post your GitHub repo link in the "intro to git and github" channel on Discord (invite: https://discord.gg/CP6vJQbA8S).

**Rubric (100 pts)**

* Conflict successfully created: 20 pts
* Conflict resolved correctly: 30 pts
* Commit message for resolution is clear: 20 pts
* Changes pushed to GitHub: 20 pts
* Repo link submitted: 10 pts

---

✅ By completing this assignment, you’ve learned one of the **most real-world Git skills**: resolving merge conflicts. Every developer faces them — now you know what to do.