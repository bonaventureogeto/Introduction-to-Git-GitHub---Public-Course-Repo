# 🗓 Week 2 – Collaboration & Professional Workflow

## Day 7: GitHub Pull Requests

### 🎯 Milestones

* Understand what a Pull Request (PR) is and why it’s important.
* Create a PR on GitHub from a feature branch.
* Request reviews and use checklists for professional workflow.

---

## 1. What is a Pull Request?

A **Pull Request (PR)** is a request to merge changes from one branch into another (usually into `main`).

👉 PRs are the **center of collaboration** on GitHub because they allow:

* Code review before merging.
* Discussion of changes.
* Running automated tests (CI/CD).
* A permanent history of why changes were made.

Think of a PR as saying:

> “Hey team, I’ve made changes on my branch. Can you review them before we add them to the main project?”

---

## 2. Preparing Your Branch

1. In your `my-first-repo`, create a new branch:

   ```bash
   git checkout -b feature-education
   ```
2. Edit `about-me.txt` and add a new section:

   ```
   Education:
   - Studying Software Engineering
   - Passionate about lifelong learning
   ```
3. Commit your changes:

   ```bash
   git add about-me.txt
   git commit -m "Add education section to about-me.txt"
   ```
4. Push the branch:

   ```bash
   git push -u origin feature-education
   ```

---

## 3. Opening a Pull Request on GitHub

1. Go to your repo on GitHub.
2. You’ll see a message:

   ```
   feature-education had recent pushes less than a minute ago. 
   Compare & pull request
   ```

   👉 Click **Compare & pull request**.

**Screenshot Example (PR button):**

```
Your recently pushed branches: feature-education
[Compare & pull request]
```

3. Fill out the PR form:

   * **Title:** `Add education section to about-me.txt`
   * **Description:** Explain what you added and why.
   * **Checklist:** Confirm acceptance criteria (file updated, commit message descriptive).

---

## 4. Requesting a Review

Scroll down and find **Reviewers**.

* Select your instructor (or tag them with `@username`).

This tells the reviewer:

> “Please check my work before it gets merged into main.”

---

## 5. Discussion & Approval

Instructors or teammates may:

* Leave comments.
* Request changes.
* Approve the PR.

Example comment in GitHub:

```
Great addition! Can you also add your graduation year for clarity?
```

You can then update your branch locally:

```bash
echo "Graduation Year: 2025" >> about-me.txt
git add about-me.txt
git commit -m "Add graduation year"
git push origin feature-education
```

👉 The PR updates automatically with your new commit.

---

## 6. Merging the Pull Request

Once approved:

1. Click **Merge Pull Request**.
2. Confirm merge.
3. Delete the branch (optional, keeps repo clean).

**Screenshot Example (after merge):**

```
Pull request successfully merged and closed.
You can safely delete the branch.
```

---

## 7. Summary

* PRs are **collaborative proposals** to merge code.
* They include **title, description, checklist, and discussion**.
* Reviewers ensure quality before merging.
* Always write **clear commit messages** and PR descriptions.

---

## 📝 Assignment: Day 7

1. Create a branch `feature-education` in your `my-first-repo`.
2. Add an **Education section** to `about-me.txt`. Commit and push.
3. Open a **Pull Request** on GitHub:

   * Title: `Add education section to about-me.txt`
   * Fill the description with a short summary.
   * Tag your instructor as a reviewer.
4. Once reviewed, merge the PR into `main`.
5. **Submission:**

   * Post the **link to your Pull Request** in the "intro to git and github" channel on Discord (invite: https://discord.gg/CP6vJQbA8S).
   * After merging, post the **link to your final repo** in the same channel.

**Rubric (100 pts)**

* Branch created & changes made: 20 pts
* PR opened with clear title & description: 30 pts
* Reviewer requested/tagged: 20 pts
* PR merged successfully: 20 pts
* Links submitted: 10 pts

---

✅ By completing this lesson, you’ve practiced the **real-world GitHub workflow** used in professional teams everywhere.