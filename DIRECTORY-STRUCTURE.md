# 📁 Repository Directory Structure

Complete guide to understanding how this course repository is organized.

## 📊 Overview

```text
Introduction-to-Git-GitHub---Public-Course-Repo/
├── .github/                      # GitHub-specific configurations
│   ├── workflows/               # CI/CD workflows (markdown linting)
│   ├── ISSUE_TEMPLATE/          # Issue templates
│   └── PULL_REQUEST_TEMPLATE.md # PR template
│
├── course/                       # Core lesson content
│   ├── week1/                   # Week 1: Foundations
│   │   ├── day1.md             # Installation & basics
│   │   ├── day2.md             # Repositories
│   │   ├── day3.md             # Basic commands
│   │   ├── day4.md             # Remote repositories
│   │   ├── day5.md             # Branching
│   │   └── project.md          # Personal profile project
│   └── week2/                   # Week 2: Collaboration
│       ├── day6.md             # Merging & conflicts
│       ├── day7.md             # Pull requests
│       ├── day8.md             # Collaboration workflows
│       ├── day9.md             # Undoing mistakes
│       ├── day10.md            # Issues & project boards
│       └── project.md          # Team mini-wiki project
│
├── docs/                         # Reference documentation
│   ├── git-command-reference.md # Complete command reference
│   ├── glossary.md              # Git/GitHub terminology
│   ├── faq.md                   # Frequently asked questions
│   ├── troubleshooting-guide.md # Error solutions
│   ├── comparison-charts.md     # Visual comparisons
│   ├── branching-strategies.md  # Workflow strategies
│   ├── commit-conventions.md    # Commit best practices
│   ├── code-review-best-practices.md # PR review guidelines
│   ├── external-resources.md    # Curated learning links
│   └── index.md                 # Documentation index
│
├── assessments/                  # Testing & practice
│   ├── quizzes/                 # Knowledge assessments
│   │   ├── week1-quiz.md       # 25 questions + answers
│   │   ├── week2-quiz.md       # 25 questions + answers
│   │   └── final-assessment.md # 40+ comprehensive questions
│   ├── practical-challenges/    # Hands-on exercises
│   │   ├── challenge-01-first-repo.md
│   │   ├── challenge-02-branching-workout.md
│   │   ├── challenge-03-merge-master.md
│   │   ├── challenge-04-conflict-resolution.md
│   │   ├── challenge-05-collaboration-simulation.md
│   │   └── challenge-06-git-detective.md
│   ├── self-checklists/         # Self-assessment tools
│   │   ├── week1-checklist.md
│   │   ├── week2-checklist.md
│   │   └── course-completion-checklist.md
│   └── capstone-project.md      # Final comprehensive project
│
├── cheatsheets/                  # Quick reference guides
│   ├── git-basics.md            # Essential commands
│   ├── branching-merging.md     # Branch operations
│   ├── collaboration.md         # GitHub collaboration
│   └── emergency-commands.md    # Fix mistakes quickly
│
├── learning-paths/               # Personalized learning tracks
│   ├── visual-learners.md       # Diagram-heavy approach
│   ├── hands-on-learners.md     # Practice-focused approach
│   └── quick-reference.md       # TL;DR summaries
│
├── templates/                    # Document templates
│   ├── assignment-template.md   # For creating assignments
│   ├── project-template.md      # For project descriptions
│   ├── exercise-template.md     # For practice exercises
│   ├── pr-template.md           # Pull request template
│   └── issue-template.md        # Issue template
│
├── scripts/                      # Utility scripts
│   └── [automation scripts]
│
├── README.md                     # Main course overview
├── SETUP.md                      # Installation instructions
├── DIRECTORY-STRUCTURE.md        # This file
├── syllabus.md                   # Course syllabus
├── CONTRIBUTING.md               # Contribution guidelines
├── SUBMIT_GUIDELINES.md          # Assignment submission
├── CODE_OF_CONDUCT.md            # Community guidelines
├── LICENSE                       # MIT License
├── students.md                   # Example file for exercises
├── .gitignore                    # Git ignore rules
├── .markdownlint.json            # Markdown linting config
└── .editorconfig                 # Editor configuration
```

## 📚 Detailed Breakdown

### Root Level Files

| File | Purpose | Audience |
|------|---------|----------|
| `README.md` | Course overview, quick start, navigation | Everyone |
| `SETUP.md` | Detailed installation for all platforms | Students starting the course |
| `DIRECTORY-STRUCTURE.md` | Repository organization guide | Educators, contributors |
| `syllabus.md` | Complete course outline with time estimates | Students, educators |
| `CONTRIBUTING.md` | Guidelines for course improvements | Contributors, educators |
| `SUBMIT_GUIDELINES.md` | Assignment submission instructions | Students |
| `CODE_OF_CONDUCT.md` | Community behavior guidelines | Everyone |
| `LICENSE` | MIT License terms | Everyone |
| `students.md` | Practice file for Week 2 exercises | Students |

### Course Directory (`course/`)

**Purpose:** Contains all daily lessons and projects

**Structure:**
* Organized by week, then by day
* Each day is a standalone markdown file
* Projects conclude each week

**File Format:**
* Learning objectives
* Estimated time
* Prerequisites
* Detailed explanations
* Code examples
* Practice exercises
* Assignment with rubric

**Audience:** Students following the course

### Documentation Directory (`docs/`)

**Purpose:** Comprehensive reference materials

**Categories:**

1. **Command References**
   * `git-command-reference.md` - Organized by function (setup, branching, etc.)
   * Includes syntax, flags, examples

2. **Conceptual Guides**
   * `glossary.md` - Terminology definitions
   * `faq.md` - Common questions
   * `comparison-charts.md` - Side-by-side comparisons

3. **Best Practices**
   * `commit-conventions.md` - How to write good commits
   * `branching-strategies.md` - Git Flow, GitHub Flow, etc.
   * `code-review-best-practices.md` - PR review guidelines

4. **Problem Solving**
   * `troubleshooting-guide.md` - Error message solutions
   * Step-by-step fixes

5. **External Links**
   * `external-resources.md` - Curated learning materials
   * Books, videos, tutorials

**Audience:** Students, educators, anyone needing reference

### Assessments Directory (`assessments/`)

**Purpose:** Test knowledge and provide practice

**Components:**

1. **Quizzes** (`quizzes/`)
   * Multiple choice, true/false, fill-in-blank
   * Collapsible answers with explanations
   * Scoring guides

2. **Practical Challenges** (`practical-challenges/`)
   * Real-world scenarios
   * Step-by-step instructions
   * Success criteria
   * Troubleshooting sections

3. **Self-Checklists** (`self-checklists/`)
   * Skills verification
   * Progress tracking
   * Confidence assessment

4. **Capstone Project**
   * Comprehensive final project
   * Combines all skills
   * Detailed rubric

**Audience:** Students testing their knowledge

### Cheat Sheets Directory (`cheatsheets/`)

**Purpose:** Quick reference during work

**Characteristics:**
* One-page format
* Most common commands
* Quick lookup tables
* Minimal explanations
* Printable

**Use Cases:**
* Keep open while working
* Quick command lookup
* Emergency situations

**Audience:** Students, developers

### Learning Paths Directory (`learning-paths/`)

**Purpose:** Personalized learning approaches

**Paths:**

1. **Visual Learners**
   * Diagram-heavy explanations
   * Video links
   * Flowcharts and graphs

2. **Hands-On Learners**
   * Extra practice exercises
   * Mini-projects
   * Interactive challenges

3. **Quick Reference**
   * TL;DR summaries
   * Core concepts only
   * Fast-track approach

**Audience:** Students with different learning styles

### Templates Directory (`templates/`)

**Purpose:** Standardized formats for consistency

**Templates:**

1. **Assignment Template**
   * For creating new assignments
   * Consistent structure

2. **Project Template**
   * For large projects
   * Includes rubric format

3. **Exercise Template**
   * For practice problems
   * Solution format

4. **PR/Issue Templates**
   * For contributions
   * Standardized information

**Audience:** Educators, contributors

## 🔍 Navigation Tips

### For Students

**Starting out:**
1. Read [README.md](README.md) for overview
2. Follow [SETUP.md](SETUP.md) to install Git
3. Begin with [course/week1/day1.md](course/week1/day1.md)

**While learning:**
* Keep [cheatsheets/git-basics.md](cheatsheets/git-basics.md) open
* Refer to [docs/faq.md](docs/faq.md) for questions
* Use [docs/troubleshooting-guide.md](docs/troubleshooting-guide.md) for errors

**After lessons:**
* Take quizzes in `assessments/quizzes/`
* Try challenges in `assessments/practical-challenges/`
* Use checklists in `assessments/self-checklists/`

### For Educators

**Adapting course:**
1. Review [CONTRIBUTING.md](CONTRIBUTING.md)
2. Use templates from `templates/` directory
3. Check [syllabus.md](syllabus.md) for time estimates

**Creating content:**
* Follow existing lesson formats in `course/`
* Use templates in `templates/`
* Reference documentation in `docs/`

### For Contributors

**Before contributing:**
1. Read [CONTRIBUTING.md](CONTRIBUTING.md)
2. Check [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md)
3. Review existing content structure

**Adding content:**
* Follow directory organization
* Use appropriate templates
* Maintain consistent style

## 📏 File Naming Conventions

### Lessons
* Format: `dayN.md` where N is 1-10
* Examples: `day1.md`, `day5.md`, `day10.md`

### Documentation
* Lowercase with hyphens
* Descriptive names
* Examples: `git-command-reference.md`, `troubleshooting-guide.md`

### Assessments
* Descriptive names with prefixes
* Format: `challenge-NN-description.md`
* Examples: `challenge-01-first-repo.md`, `week1-quiz.md`

### Cheat Sheets
* Topic-based naming
* Format: `topic-name.md`
* Examples: `git-basics.md`, `emergency-commands.md`

## 🎯 Content Organization Principles

### Modularity
* Each file is self-contained
* Lessons don't depend on reading documentation
* Documentation is supplementary

### Progressive Complexity
* Week 1: Foundations (individual work)
* Week 2: Collaboration (teamwork)
* Each day builds on previous days

### Multiple Learning Styles
* Visual: Diagrams, flowcharts
* Textual: Detailed explanations
* Practical: Hands-on exercises
* Reference: Quick lookups

### Accessibility
* Clear file names
* Logical organization
* Cross-references between files
* Multiple entry points (README, syllabus, docs)

## 🔗 Internal Links

**Links between files use relative paths:**

```markdown
[Day 1 Lesson](course/week1/day1.md)
[Git Glossary](docs/glossary.md)
[Setup Guide](SETUP.md)
```

**Benefits:**
* Works in GitHub web interface
* Works in local markdown viewers
* Works when repository is cloned

## 📦 When Adding New Content

### New Lesson
→ Place in `course/week1/` or `course/week2/`

### New Documentation
→ Place in `docs/`

### New Assessment
→ Place in appropriate `assessments/` subdirectory

### New Cheat Sheet
→ Place in `cheatsheets/`

### Update README
Add links to new content in appropriate section

### Update This File
If adding new directory or major content category

## 🎓 For Different Use Cases

### Self-Paced Learning
* Start with README.md
* Follow course/ lessons sequentially
* Use docs/ as needed for reference

### Classroom Teaching
* Review syllabus.md for planning
* Use templates/ for consistency
* Adapt lessons from course/

### Quick Reference
* Go directly to cheatsheets/
* Use docs/git-command-reference.md
* Check docs/emergency-commands.md

### Contributing
* Read CONTRIBUTING.md
* Review templates/ for formats
* Check existing content in relevant directory

## 🔄 Maintenance

This structure is designed to:
* Scale with additional content
* Maintain organization
* Support multiple audiences
* Enable easy navigation

When adding content, maintain this organization for consistency.

## 📞 Questions?

* Structure unclear? Open an issue
* Suggesting reorganization? Open a discussion
* Found broken link? Submit a PR

**Remember:** Good organization makes learning easier! 🎯
