# ⚙️ Setup Guide - Git & GitHub Course

Complete setup instructions for Windows, macOS, and Linux to get started with the course.

## Table of Contents

* [Prerequisites](#prerequisites)
* [Installing Git](#installing-git)
  * [Windows](#windows)
  * [macOS](#macos)
  * [Linux](#linux)
* [Configuring Git](#configuring-git)
* [Creating a GitHub Account](#creating-a-github-account)
* [Setting Up VS Code (Optional)](#setting-up-vs-code-optional)
* [Configuring SSH Keys (Optional but Recommended)](#configuring-ssh-keys-optional-but-recommended)
* [Verification](#verification)
* [Troubleshooting](#troubleshooting)

---

## Prerequisites

Before starting this course, you should have:

* **A computer** running Windows 10+, macOS 10.12+, or a modern Linux distribution
* **Administrator access** to install software
* **Internet connection** for downloading Git and creating GitHub account
* **Basic computer skills**: navigating file systems, using terminal/command prompt
* **A text editor** (we recommend VS Code, but any will work)

**No prior programming or Git experience required!**

---

## Installing Git

### Windows

#### Option 1: Git for Windows (Recommended)

1. **Download Git**
   * Visit [git-scm.com/download/win](https://git-scm.com/download/win)
   * Download will start automatically
   * File name: `Git-2.x.x-64-bit.exe`

2. **Run the Installer**
   * Double-click the downloaded file
   * If prompted by Windows Security, click "Run"

3. **Installation Steps**

   * **Select Destination**: Accept default (`C:\Program Files\Git`)
   * **Select Components**: Keep defaults, optionally check:
     * ☑ Windows Explorer integration
     * ☑ Git Bash Here
     * ☑ Git GUI Here
   * **Start Menu Folder**: Keep default
   * **Default Editor**: Choose your preferred editor (VS Code recommended)
   * **Initial Branch Name**: Choose "main" (modern standard)
   * **PATH Environment**: Select "Git from the command line and also from 3rd-party software"
   * **SSH executable**: Use bundled OpenSSH
   * **HTTPS transport**: Use OpenSSL library
   * **Line ending conversions**: "Checkout Windows-style, commit Unix-style" (default)
   * **Terminal emulator**: Use MinTTY
   * **Git pull behavior**: Default (fast-forward or merge)
   * **Credential helper**: Git Credential Manager
   * **Extra options**: Keep defaults
   * Click "Install"

4. **Verify Installation**
   * Open **Git Bash** (search in Start Menu)
   * Or open **Command Prompt** / **PowerShell**
   * Type:

     ```bash
     git --version
     ```

   * Should show: `git version 2.x.x`

#### Option 2: Windows Package Managers

**Using Chocolatey:**

```powershell
choco install git
```

**Using Winget:**

```powershell
winget install Git.Git
```

#### Common Windows Terminals

* **Git Bash**: Unix-like terminal installed with Git (recommended for this course)
* **Command Prompt**: Built-in Windows terminal (`cmd`)
* **PowerShell**: Advanced Windows terminal
* **Windows Terminal**: Modern terminal app (Windows 10/11)

---

### macOS

#### Option 1: Homebrew (Recommended)

1. **Install Homebrew** (if not already installed)

   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. **Install Git**

   ```bash
   brew install git
   ```

3. **Verify Installation**

   ```bash
   git --version
   ```

#### Option 2: Xcode Command Line Tools

1. **Install Xcode Tools**

   ```bash
   xcode-select --install
   ```

2. **Follow the prompts** to complete installation

3. **Verify**

   ```bash
   git --version
   ```

#### Option 3: Official Installer

1. Visit [git-scm.com/download/mac](https://git-scm.com/download/mac)
2. Download the `.dmg` file
3. Open and follow installation prompts
4. Verify with `git --version`

#### macOS Terminal

* Open **Terminal** app (in Applications > Utilities)
* Or use **Spotlight Search** (Cmd+Space) and type "Terminal"
* Or use **iTerm2** (popular alternative)

---

### Linux

#### Ubuntu / Debian

```bash
# Update package list
sudo apt update

# Install Git
sudo apt install git

# Verify
git --version
```

#### Fedora

```bash
# Install Git
sudo dnf install git

# Verify
git --version
```

#### Arch Linux

```bash
# Install Git
sudo pacman -S git

# Verify
git --version
```

#### CentOS / RHEL

```bash
# Install Git
sudo yum install git

# Verify
git --version
```

#### From Source (Any Linux)

```bash
# Install dependencies (Ubuntu/Debian)
sudo apt install build-essential libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip

# Download and install Git
cd /tmp
wget https://github.com/git/git/archive/v2.40.0.tar.gz
tar -zxf v2.40.0.tar.gz
cd git-2.40.0
make prefix=/usr/local all
sudo make prefix=/usr/local install

# Verify
git --version
```

---

## Configuring Git

After installing Git, configure your identity. This information appears in every commit you make.

### Required Configuration

```bash
# Set your name
git config --global user.name "Your Full Name"

# Set your email (use the same email as your GitHub account)
git config --global user.email "your.email@example.com"
```

### Verify Configuration

```bash
# List all configuration
git config --list

# Check specific values
git config user.name
git config user.email
```

### Recommended Configuration

```bash
# Set default branch name to 'main'
git config --global init.defaultBranch main

# Set default editor (choose one)
git config --global core.editor "code --wait"  # VS Code
git config --global core.editor "nano"         # Nano
git config --global core.editor "vim"          # Vim

# Enable colored output
git config --global color.ui auto

# Set credential helper
# Windows:
git config --global credential.helper manager

# macOS:
git config --global credential.helper osxkeychain

# Linux:
git config --global credential.helper cache
```

### Optional Configuration

```bash
# Set up aliases for common commands
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual 'log --oneline --graph --all'

# Configure line endings
# Windows:
git config --global core.autocrlf true

# macOS/Linux:
git config --global core.autocrlf input
```

---

## Creating a GitHub Account

1. **Visit GitHub**
   * Go to [github.com](https://github.com)

2. **Sign Up**
   * Click "Sign up" in the top right
   * Enter your email address
   * Create a password (strong password recommended)
   * Choose a username (this will be public)
   * Complete the puzzle/verification

3. **Verify Email**
   * Check your email for verification message
   * Click the verification link

4. **Complete Profile** (Optional but Recommended)
   * Add a profile picture
   * Add a bio
   * Set your location
   * Add social links

5. **Choose a Plan**
   * Free plan is sufficient for this course
   * Includes unlimited public and private repositories

### GitHub Account Best Practices

* **Username**: Choose professionally (it appears in all your repo URLs)
* **Email**: Use an email you check regularly
* **2FA**: Enable two-factor authentication (Settings > Password and authentication)
* **Profile**: Complete your profile to look professional

---

## Setting Up VS Code (Optional)

Visual Studio Code is a popular, free code editor with excellent Git integration.

### Installation

**Windows:**
* Download from [code.visualstudio.com](https://code.visualstudio.com)
* Run installer
* Check "Add to PATH" during installation

**macOS:**

```bash
brew install --cask visual-studio-code
```

Or download from [code.visualstudio.com](https://code.visualstudio.com)

**Linux (Ubuntu/Debian):**

```bash
sudo snap install code --classic
```

Or download `.deb` from [code.visualstudio.com](https://code.visualstudio.com)

### Recommended Extensions

Install these VS Code extensions for better Git experience:

1. **GitLens** - Supercharge Git in VS Code
   * Extension ID: `eamodio.gitlens`
   * Command: `code --install-extension eamodio.gitlens`

2. **Git Graph** - Visual Git history
   * Extension ID: `mhutchie.git-graph`
   * Command: `code --install-extension mhutchie.git-graph`

3. **GitHub Pull Requests** - Manage PRs from VS Code
   * Extension ID: `GitHub.vscode-pull-request-github`
   * Command: `code --install-extension GitHub.vscode-pull-request-github`

### Configure VS Code as Default Editor

```bash
git config --global core.editor "code --wait"
```

### Open VS Code from Terminal

```bash
# Open current directory
code .

# Open specific file
code file.txt
```

---

## Configuring SSH Keys (Optional but Recommended)

SSH keys allow you to connect to GitHub without entering your password every time.

### Generate SSH Key

**All Operating Systems:**

```bash
# Generate new SSH key (use your GitHub email)
ssh-keygen -t ed25519 -C "your.email@example.com"

# Or if your system doesn't support ed25519:
ssh-keygen -t rsa -b 4096 -C "your.email@example.com"
```

**Prompts:**
* "Enter file in which to save the key": Press Enter (default location)
* "Enter passphrase": Optional, press Enter to skip or add extra security

### Add SSH Key to SSH Agent

**macOS/Linux:**

```bash
# Start ssh-agent
eval "$(ssh-agent -s)"

# Add key to agent
ssh-add ~/.ssh/id_ed25519
```

**Windows (Git Bash):**

```bash
# Start ssh-agent
eval "$(ssh-agent -s)"

# Add key to agent
ssh-add ~/.ssh/id_ed25519
```

### Add SSH Key to GitHub

1. **Copy your public key:**

   **macOS:**

   ```bash
   pbcopy < ~/.ssh/id_ed25519.pub
   ```

   **Linux:**

   ```bash
   cat ~/.ssh/id_ed25519.pub
   # Then manually copy the output
   ```

   **Windows (Git Bash):**

   ```bash
   cat ~/.ssh/id_ed25519.pub | clip
   ```

2. **Add to GitHub:**
   * Go to GitHub.com
   * Click your profile picture → Settings
   * Click "SSH and GPG keys"
   * Click "New SSH key"
   * Title: "My Laptop" (or descriptive name)
   * Paste your key in the "Key" field
   * Click "Add SSH key"

3. **Test Connection:**

   ```bash
   ssh -T git@github.com
   ```

   Should see: "Hi username! You've successfully authenticated..."

### Using SSH URLs

When SSH is configured, use SSH URLs instead of HTTPS:

```bash
# HTTPS (requires login each time)
git clone https://github.com/username/repo.git

# SSH (no login required after setup)
git clone git@github.com:username/repo.git
```

---

## Verification

After completing setup, verify everything works:

### 1. Check Git Installation

```bash
git --version
# Should show: git version 2.x.x
```

### 2. Check Git Configuration

```bash
git config --list
# Should show your name and email
```

### 3. Create Test Repository

```bash
# Create directory
mkdir git-test
cd git-test

# Initialize Git
git init

# Create file
echo "Hello Git" > test.txt

# Stage and commit
git add test.txt
git commit -m "Test commit"

# Check log
git log
```

### 4. Test GitHub Connection

```bash
# Create a repository on GitHub first (name it 'git-test')

# Add remote
git remote add origin https://github.com/yourusername/git-test.git
# Or with SSH:
# git remote add origin git@github.com:yourusername/git-test.git

# Push
git push -u origin main
```

If you can see your commit on GitHub, everything is working! ✅

---

## Troubleshooting

### Git Not Found

**Problem:** `git: command not found` or `'git' is not recognized`

**Solution:**
* **Windows**: Reinstall Git, ensure "Add to PATH" is selected
* **macOS/Linux**: Verify installation completed successfully
* **All**: Restart your terminal/command prompt

### Permission Denied (SSH)

**Problem:** `Permission denied (publickey)` when pushing/pulling

**Solution:**
* Verify SSH key is added to GitHub
* Check SSH agent is running: `eval "$(ssh-agent -s)"`
* Add key to agent: `ssh-add ~/.ssh/id_ed25519`
* Or use HTTPS instead of SSH

### Authentication Failed (HTTPS)

**Problem:** `Authentication failed` when pushing/pulling

**Solution:**
* Use a Personal Access Token instead of password
* Generate token: GitHub Settings → Developer Settings → Personal Access Tokens
* Use token as password when prompted

### Line Ending Warnings

**Problem:** Warnings about line endings (CRLF/LF)

**Solution:**

```bash
# Windows:
git config --global core.autocrlf true

# macOS/Linux:
git config --global core.autocrlf input
```

### Credential Helper Issues

**Problem:** Asked for credentials repeatedly

**Solution:**

```bash
# Windows:
git config --global credential.helper manager

# macOS:
git config --global credential.helper osxkeychain

# Linux:
git config --global credential.helper cache
```

### VS Code Not Opening

**Problem:** `code` command not found

**Solution:**
* **Windows**: Reinstall VS Code, check "Add to PATH"
* **macOS**: Open VS Code, press Cmd+Shift+P, type "Shell Command: Install 'code' command in PATH"
* **Linux**: Ensure VS Code is in PATH or use full path

---

## Next Steps

✅ **Setup Complete!** You're ready to start the course.

**Proceed to:**
1. [Course Syllabus](syllabus.md) - Overview of the 2-week course
2. [Week 1, Day 1](course/week1/day1.md) - First lesson
3. [Git Basics Cheat Sheet](cheatsheets/git-basics.md) - Quick reference

**Need Help?**
* 📖 [FAQ](docs/faq.md) - Common questions
* 🔧 [Troubleshooting Guide](docs/troubleshooting-guide.md) - Detailed solutions
* 💬 [Discord Server](https://discord.gg/CP6vJQbA8S) - Ask the community

---

## Additional Resources

* [Official Git Documentation](https://git-scm.com/doc)
* [GitHub Docs](https://docs.github.com)
* [Pro Git Book](https://git-scm.com/book/en/v2) (free online)
* [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)

Happy Learning! 🚀
