# 🗓 Week 1 – Foundations of Git

## Day 3: Basic Git Commands

### 🎯 Milestones

* Learn and practice essential Git commands.
* Understand how to inspect changes and project history.
* Write clear and meaningful commit messages.

---

## 1. Recap from Day 2

Yesterday you:
✅ Created a repo `my-first-repo`.
✅ Added a file `about-me.txt`.
✅ Made your first commit and pushed it to GitHub.

Today we’ll **inspect changes** and practice the most common Git commands you’ll use daily.

---

## 2. Checking Project Status

Run:

```bash
git status
```

This shows:

* Which files are untracked (not staged yet).
* Which files are staged (ready to commit).
* Which branch you’re on.

👉 Think of it as **“Where am I now?”**

---

## 3. Viewing Project History

Run:

```bash
git log
```

Output looks like:

```
commit 2f3c1d4f23c6b...
Author: Your Name <you@example.com>
Date:   Sat Sep 6 14:00 2025

    Added about-me.txt with introduction
```

Options:

* `git log --oneline` → short summary.
* `git log --stat` → shows which files changed.

---

## 4. Seeing What Changed

Modify your file:

```bash
echo "I love learning new technologies." >> about-me.txt
```

Check what’s different:

```bash
git diff
```

You’ll see lines starting with `+` showing new additions.

---

## 5. Writing Better Commit Messages

Good commit messages should:

* Start with a verb (e.g., “Add”, “Fix”, “Update”).
* Be short but descriptive.

Examples:
✅ `Add hobbies section to about-me.txt`
❌ `stuff`

---

## 6. Practice: Commit Your Changes

1. Stage the update:

   ```bash
   git add about-me.txt
   ```
2. Commit with a clear message:

   ```bash
   git commit -m "Add statement about learning new technologies"
   ```
3. Push to GitHub:

   ```bash
   git push origin main
   ```

Check GitHub → the updated file should be visible in the repo.

---

## 📝 Assignment: Day 3

1. Open your `my-first-repo`.
2. Add at least **two new lines** to `about-me.txt` (e.g., hobbies, goals, favorite tool).
3. Use `git diff` to check your changes.
4. Stage and commit with a **descriptive commit message**.
5. Push your changes to GitHub.
6. **Submission:** Post your repo link in the "intro to git and github" channel on Discord (invite: https://discord.gg/CP6vJQbA8S).

**Rubric (100 pts)**

* Used `git diff` and inspected changes: 20 pts
* File updated correctly: 20 pts
* Commit message clear & descriptive: 30 pts
* Changes pushed to GitHub: 20 pts
* Repo link submitted: 10 pts