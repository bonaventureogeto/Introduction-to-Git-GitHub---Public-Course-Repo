# 🗓 Week 1 – Foundations of Git

## Day 2: Initializing Repositories

### 🎯 Milestones

* Create and initialize local Git repositories.
* Understand the **working directory**, **staging area**, and **commits**.

---

## 1. Understanding the Git Workflow

When working with Git, there are **three key areas**:

1. **Working Directory** – where your project files live (what you see in your folder).
2. **Staging Area** – where changes are prepared before saving (like a shopping cart before checkout).
3. **Repository (.git)** – where committed snapshots are stored permanently with history.

👉 The Git cycle looks like this:

```
Working Directory → git add → Staging Area → git commit → Repository
```

---

## 2. Creating a New Repository

1. Open your terminal.
2. Create a new project folder:

   ```bash
   mkdir my-first-repo
   cd my-first-repo
   ```
3. Initialize Git inside it:

   ```bash
   git init
   ```

   You’ll see:

   ```
   Initialized empty Git repository in .../my-first-repo/.git/
   ```

   > This `.git` folder is where Git stores all the history and commits.

---

## 3. Adding Your First File

1. Create a file:

   ```bash
   echo "My name is <Your Name> and I’m learning Git." > about-me.txt
   ```
2. Check Git status:

   ```bash
   git status
   ```

   Output:

   ```
   Untracked files:
     about-me.txt
   ```

   👉 This means Git sees the file but is not tracking it yet.

---

## 4. Staging and Committing

1. Stage the file:

   ```bash
   git add about-me.txt
   ```
2. Commit the file (save a snapshot):

   ```bash
   git commit -m "Added about-me.txt with introduction"
   ```

   Output:

   ```
   1 file changed, 1 insertion(+)
   create mode 100644 about-me.txt
   ```

Now Git has saved this version in history.

---

## 5. Linking to GitHub

1. Create a new empty repository on GitHub called **my-first-repo**.

   * Do **not** add a README.
2. Connect your local repo to GitHub:

   ```bash
   git remote add origin https://github.com/username/my-first-repo.git
   ```
3. Push your commit:

   ```bash
   git branch -M main
   git push -u origin main
   ```

Check GitHub → you should see `about-me.txt` online 🎉

---

## 📝 Assignment: Day 2

1. Create a new folder `my-first-repo`.
2. Initialize Git (`git init`).
3. Add a file `about-me.txt` with:

   * Your full name
   * Why you are learning Git/GitHub
4. Stage and commit the file.
5. Push the repository to GitHub.
6. **Submission:** Submit your GitHub repo link in the LMS.

**Rubric (100 pts)**

* Repo created and initialized: 20 pts
* File `about-me.txt` created with correct content: 30 pts
* File committed locally: 20 pts
* Repo pushed to GitHub successfully: 20 pts
* Submission link provided: 10 pts