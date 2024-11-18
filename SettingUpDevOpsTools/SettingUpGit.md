# Setting Up Git

##  **Version Control: Git**

Version control is fundamental for DevOps teams to track code changes, collaborate, and manage releases. Git is the most widely used version control system (VCS) in the DevOps world.

### Setting Up Git

1. **Install Git**
   - **Windows**: Download from [Git for Windows](https://git-scm.com/download/win).
   - **Mac**: Install via Homebrew (`brew install git`) or download from [Git for Mac](https://git-scm.com/download/mac).
   - **Linux**: Install via package manager (`sudo apt-get install git` for Ubuntu, `sudo yum install git` for CentOS).

2. **Configure Git**
   After installation, configure Git with your name and email (this will be used in commit logs):
   ```bash
   git config --global user.name "Your Name"
   git config --global user.email "youremail@example.com"

## Create a Git Repository To start a project, initialize a Git repository:

```bash
git init
```

## Push to Remote Repository

  - **Create a repository on GitHub, GitLab, or Bitbucket.**
  - **Add the remote repository and push your local code:**

```bash
git remote add origin https://github.com/username/repository.git
git push -u origin master
```
