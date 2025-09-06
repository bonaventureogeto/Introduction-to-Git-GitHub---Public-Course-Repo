# 🗓 Week 2 – Collaboration & Professional Workflow

## Day 10: GitHub Issues & Project Boards

### 🎯 Milestones

* Learn what GitHub Issues are and why they matter.
* Create Issues to track tasks and bugs.
* Use Project Boards to organize and manage work.
* Link commits and Pull Requests to Issues.

---

## 1. What are GitHub Issues?

Issues are **to-do items** in GitHub projects. They can represent:

* New features to build
* Bugs to fix
* Questions or discussions

👉 Think of Issues as **sticky notes** for your project.

Example Issue:

```
Title: Add contact information to README
Description: Please update README.md to include email and LinkedIn links.
```

---

## 2. Creating an Issue

1. Go to your repo on GitHub.
2. Click the **Issues** tab → **New Issue**.
3. Fill in:

   * **Title:** `Add contact information to README`
   * **Description:**

     ```
     Add a "Contact" section to README.md
     - Include email
     - Include LinkedIn
     ```
   * Assign yourself as the **Assignee**.

**Screenshot Example (Issue creation):**

```
[✓] Title: Add contact information to README
[✓] Description: Add email and LinkedIn
[✓] Assignee: Your Name
```

---

## 3. Linking Commits to Issues

When you make a commit, reference the Issue:

```bash
git commit -m "Add contact section to README (fixes #1)"
```

👉 The keyword `fixes #1` tells GitHub:

* This commit fixes **Issue #1**.
* When pushed, the Issue automatically **closes**.

---

## 4. GitHub Project Boards

Project Boards let you organize tasks visually (like Trello).

1. Go to your repo → **Projects** → New Project.
2. Choose **Board** view.
3. Add columns:

   * To Do
   * In Progress
   * Done
4. Add your Issue (e.g., “Add contact info”) to the board.

   * Drag it across as you work on it.

**Screenshot Example (Board):**

```
To Do         | In Progress       | Done
--------------------------------------------
Add contact   |                   | 
information   |                   |
to README     |                   |
```

After committing with `fixes #1`, the Issue moves automatically to **Done**. 🎉

---

## 5. Pull Requests + Issues

You can also link a PR to an Issue.

* In the PR description, write:

  ```
  This PR fixes #1 by adding a Contact section.
  ```
* When the PR is merged, the Issue closes automatically.

---

## 6. Summary

* **Issues** = tasks, bugs, feature requests.
* **Commits with `fixes #X`** = automatically close Issues.
* **Project Boards** = organize and track progress visually.
* This workflow is used in almost every professional dev team.

---

## 📝 Assignment: Day 10

1. In your `my-first-repo`:

   * Create an Issue: `Add contact section to README`.
   * Assign it to yourself.
2. Create a Project Board with columns (To Do, In Progress, Done).
3. Add the Issue to the Project Board under **To Do**.
4. On a new branch `feature-contact`, update `README.md` with:

   * Email
   * LinkedIn profile
5. Commit with message:

   ```bash
   git commit -m "Add contact section to README (fixes #1)"
   ```
6. Push and open a PR, referencing the Issue in the description.
7. Merge the PR → confirm Issue #1 closes and moves to **Done** on the board.
8. **Submission:** Submit your **repo link + Issue link + Project Board link** in LMS.

**Rubric (100 pts)**

* Issue created with clear title & description: 20 pts
* Project Board created with columns: 20 pts
* Commit message correctly linked to Issue: 30 pts
* PR opened, merged, and Issue closed: 20 pts
* Links submitted: 10 pts

---

✅ By finishing this, you will have simulated a **mini professional workflow**: writing Issues, linking commits, managing a board, and closing Issues automatically.