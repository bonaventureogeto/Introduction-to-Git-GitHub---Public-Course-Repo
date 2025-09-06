# 🗓 Week 1 – Foundations of Git

## Day 4: Working with GitHub Remotes

### 🎯 Milestones

* Connect your local repository to GitHub.
* Clone remote repositories.
* Push and pull changes between local and remote.

---

## 1. What Are Remotes?

* A **remote** is a version of your project hosted online (usually on GitHub).
* Your **local repo** lives on your computer.
* Git lets you sync changes between the two.

👉 Common workflow:

* **Clone** a repo from GitHub → work locally.
* **Push** your commits → send them to GitHub.
* **Pull** updates → bring new changes from GitHub.

---

## 2. Setting Up a Remote

1. Go to GitHub and create a new empty repository named **hello-remote**.

   * Don’t add README, .gitignore, or license (we’ll do it locally).

2. On your computer, create a new folder:

   ```bash
   mkdir hello-remote
   cd hello-remote
   git init
   ```

   **Screenshot Example:**

   ```
   Initialized empty Git repository in /Users/student/hello-remote/.git/
   ```

3. Add a file:

   ```bash
   echo "This is my first remote repo." > remote.txt
   git add remote.txt
   git commit -m "Add remote.txt with introduction"
   ```

4. Link to GitHub:

   ```bash
   git remote add origin https://github.com/<your-username>/hello-remote.git
   ```

5. Push to GitHub:

   ```bash
   git branch -M main
   git push -u origin main
   ```

**Screenshot Example:**

```
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Writing objects: 100% (3/3), 260 bytes | 260.00 KiB/s, done.
To https://github.com/username/hello-remote.git
 * [new branch]      main -> main
```

---

## 3. Cloning an Existing Repo

Cloning downloads a remote repo to your computer.

Example:

```bash
git clone https://github.com/<your-username>/hello-remote.git
```

**Screenshot Example:**

```
Cloning into 'hello-remote'...
remote: Enumerating objects: 3, done.
Receiving objects: 100% (3/3), done.
```

Now you have a copy of the repo on your computer.

---

## 4. Pulling Changes

If someone else updates the repo, you can pull their changes:

```bash
git pull origin main
```

**Screenshot Example:**

```
From https://github.com/username/hello-remote
 * branch            main       -> FETCH_HEAD
Already up to date.
```

---

## 📝 Assignment: Day 4

1. Create a new GitHub repo called **hello-remote**.
2. Initialize it locally and add a file `remote.txt` with one sentence about GitHub.
3. Commit and push it to GitHub.
4. Clone the repo to a new folder (e.g., `hello-remote-clone`).
5. Add another line in `remote.txt` inside the cloned folder. Commit & push the update.
6. **Submission:** Share the **GitHub repo link** in the "intro to git and github" channel on Discord (invite: https://discord.gg/CP6vJQbA8S).

**Rubric (100 pts)**

* Local repo created & linked to GitHub: 20 pts
* File `remote.txt` created & committed: 20 pts
* Repo successfully pushed: 20 pts
* Repo cloned and updated: 30 pts
* Repo link submitted: 10 pts