# 🎯 Practical Challenge 01: Your First Repository

**Difficulty:** Beginner  
**Estimated Time:** 20-30 minutes  
**Skills Practiced:** Git initialization, basic commands, GitHub connection

---

## 📋 Objective

Create a personal portfolio repository from scratch, add multiple files, make several commits with good messages, and push everything to GitHub.

## 🎯 Learning Goals

By completing this challenge, you will practice:

* Initializing a new Git repository
* Creating and organizing files
* Staging and committing changes
* Writing meaningful commit messages
* Connecting to and pushing to GitHub
* Verifying your work online

---

## 📝 Requirements

Create a repository called `my-portfolio` with the following structure:

```text
my-portfolio/
├── README.md
├── about.md
├── projects.md
└── contact.md
```

### File Content Requirements

**README.md:**

```markdown
# My Portfolio

Welcome to my personal portfolio repository!

## About This Project

This portfolio showcases my journey learning Git and GitHub.

## Contents

* [About Me](about.md)
* [Projects](projects.md)
* [Contact](contact.md)

## Skills

* Git
* GitHub
* Version Control
```

**about.md:**

```markdown
# About Me

## Introduction

[Write 2-3 sentences about yourself]

## Interests

* Interest 1
* Interest 2
* Interest 3

## Goals

[What you want to achieve with programming/Git]
```

**projects.md:**

```markdown
# Projects

## Current Projects

### Project 1: Learning Git
* **Description:** Mastering Git and GitHub
* **Status:** In Progress
* **Skills:** Version control, collaboration

### Project 2: Personal Portfolio
* **Description:** Building a portfolio website
* **Status:** Planning
* **Skills:** HTML, CSS

## Future Projects

* List any future project ideas here
```

**contact.md:**

```markdown
# Contact Information

## How to Reach Me

* **GitHub:** [Your GitHub Username]
* **Email:** [Your Email (optional)]
* **LinkedIn:** [Your LinkedIn (optional)]

## Availability

Open to collaboration and learning opportunities!
```

---

## 🚀 Challenge Steps

### Part 1: Local Setup (10 minutes)

1. **Create Project Directory**

   ```bash
   mkdir my-portfolio
   cd my-portfolio
   ```

2. **Initialize Git**

   ```bash
   git init
   ```

3. **Create README.md** with the content above

   ```bash
   # Create file (use your preferred method)
   # macOS/Linux:
   nano README.md
   # Or Windows:
   notepad README.md
   ```

4. **First Commit**

   ```bash
   git add README.md
   git commit -m "Initial commit: Add project README"
   ```

5. **Create about.md** with your personal information

6. **Second Commit**

   ```bash
   git add about.md
   git commit -m "Add about page with personal introduction"
   ```

7. **Create projects.md** with project information

8. **Third Commit**

   ```bash
   git add projects.md
   git commit -m "Add projects page with current and future projects"
   ```

9. **Create contact.md** with contact information

10. **Fourth Commit**

    ```bash
    git add contact.md
    git commit -m "Add contact page with communication channels"
    ```

11. **Verify Your Work**

    ```bash
    # Check status
    git status

    # View commit history
    git log --oneline

    # List tracked files
    git ls-files
    ```

### Part 2: GitHub Connection (10 minutes)

1. **Create GitHub Repository**
   * Go to [github.com](https://github.com)
   * Click "New" repository (+ icon, top right)
   * Repository name: `my-portfolio`
   * Description: "Personal portfolio showcasing my Git/GitHub skills"
   * Visibility: Public
   * **DO NOT** initialize with README (you already have one)
   * Click "Create repository"

2. **Connect Local to GitHub**

   ```bash
   # Add remote (use your actual GitHub username)
   git remote add origin https://github.com/YOUR-USERNAME/my-portfolio.git

   # Or with SSH (if configured):
   # git remote add origin git@github.com:YOUR-USERNAME/my-portfolio.git
   ```

3. **Push to GitHub**

   ```bash
   # Rename branch to main (if needed)
   git branch -M main

   # Push with upstream tracking
   git push -u origin main
   ```

4. **Verify on GitHub**
   * Go to your repository on GitHub
   * Verify all 4 files are present
   * Click on "commits" - should see 4 commits
   * Check that README.md displays on the repository home page

---

## ✅ Success Criteria

Your challenge is complete when:

* ✅ Repository contains all 4 required files
* ✅ At least 4 commits with descriptive messages
* ✅ Repository is pushed to GitHub
* ✅ All files visible on GitHub
* ✅ Commit history visible on GitHub
* ✅ README.md renders properly on GitHub homepage

---

## 🎓 Bonus Challenges

### Bonus 1: Add a .gitignore File

Create a `.gitignore` file:

```text
# Operating System
.DS_Store
Thumbs.db

# Editor
.vscode/
.idea/
*.swp

# Temporary
*.tmp
*.log
```

Commit with message: "Add gitignore for common files"

### Bonus 2: Add Visual Elements

Add a table to your projects.md:

```markdown
| Project | Status | Started |
|---------|--------|---------|
| Learning Git | In Progress | 2025-01 |
| Portfolio Site | Planning | 2025-01 |
```

Commit with message: "Enhance projects page with status table"

### Bonus 3: Tag Your Release

```bash
git tag v1.0.0
git push origin v1.0.0
```

### Bonus 4: Create a Branch

```bash
# Create enhancement branch
git checkout -b add-skills-section

# Add a skills.md file
echo "# Skills" > skills.md
echo "" >> skills.md
echo "## Technical Skills" >> skills.md
echo "* Git & GitHub" >> skills.md

# Commit
git add skills.md
git commit -m "Add skills section"

# Push branch
git push -u origin add-skills-section

# Go to GitHub and create a Pull Request
```

---

## 🔍 Self-Assessment

### Check Your Understanding

<details>
<summary>Q1: Why did we make 4 separate commits instead of one?</summary>

**Answer:** Separate commits help organize changes logically. Each commit represents a specific addition to the project, making it easier to:
* Track what changed and when
* Understand the project's evolution
* Revert specific changes if needed
* Review history clearly

</details>

<details>
<summary>Q2: What would happen if you made changes and ran `git push` without `git add` and `git commit`?</summary>

**Answer:** Nothing would be pushed. Git only pushes committed changes. Your local modifications would remain uncommitted and unpushed. You must:
1. `git add` to stage changes
2. `git commit` to save them
3. `git push` to upload them

</details>

<details>
<summary>Q3: Can you delete your local repository and work on it from another computer?</summary>

**Answer:** Yes! Since you pushed to GitHub, you can clone it anywhere:

```bash
git clone https://github.com/YOUR-USERNAME/my-portfolio.git
```

This downloads the entire repository including all history.

</details>

---

## 🐛 Troubleshooting

### Problem: "remote origin already exists"

**Solution:**

```bash
# Check current remote
git remote -v

# If wrong, remove it
git remote remove origin

# Add correct remote
git remote add origin https://github.com/YOUR-USERNAME/my-portfolio.git
```

### Problem: "Permission denied" when pushing

**Solution:**

* **HTTPS:** Make sure you're using correct credentials
  * Username: Your GitHub username
  * Password: Personal Access Token (not your GitHub password)
  * Generate token: GitHub Settings → Developer Settings → Personal Access Tokens

* **SSH:** Ensure SSH key is configured
  * See [SETUP.md](../../SETUP.md#configuring-ssh-keys-optional-but-recommended)

### Problem: "Repository not found"

**Solution:**
* Verify repository exists on GitHub
* Check username is correct in URL
* Ensure repository is not private (if using HTTPS without authentication)

### Problem: "Nothing to commit"

**Solution:**

```bash
# Check what's staged
git status

# If you haven't staged changes
git add .

# Then commit
git commit -m "Your message"
```

---

## 📚 What You Learned

After completing this challenge, you now know how to:

* ✅ Initialize a Git repository
* ✅ Create and stage files
* ✅ Make commits with meaningful messages
* ✅ Create a repository on GitHub
* ✅ Connect local repository to remote
* ✅ Push commits to GitHub
* ✅ Verify your work online

---

## 🎯 Next Steps

Ready for more? Try:

* [Challenge 02: Branching Workout](challenge-02-branching-workout.md) - Practice branching strategies
* [Challenge 03: Merge Master](challenge-03-merge-master.md) - Master merging techniques
* [Week 1 Quiz](../quizzes/week1-quiz.md) - Test your knowledge

---

## 💬 Share Your Work

1. **Add your portfolio to the course showcase:**
   * Open an issue in the course repository
   * Title: "Portfolio Submission - [Your Name]"
   * Include link to your repository

2. **Get feedback:**
   * Share in the [Discord server](https://discord.gg/CP6vJQbA8S)
   * Ask classmates to review your commit messages
   * Review others' portfolios

---

## 📊 Grading Rubric (If Submitting for Credit)

| Criteria | Points | Description |
|----------|--------|-------------|
| **Repository Structure** | 20 | All 4 required files present |
| **File Content** | 20 | Content meets requirements and is personalized |
| **Commit Quality** | 25 | At least 4 commits with clear, descriptive messages |
| **GitHub Integration** | 20 | Successfully pushed to GitHub, all commits visible |
| **Verification** | 15 | Repository is accessible, README renders properly |
| **Bonus** | +10 | Completed one or more bonus challenges |

**Total:** 100 points (110 with bonus)

---

**Congratulations on completing Challenge 01!** 🎉

You've successfully created your first real Git repository and published it on GitHub. This is a foundational skill you'll use throughout your development career.
