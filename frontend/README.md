# Degree Maps Frontend Documentation

This documentation contains the steps that were followed to install and setup the frontend.

## Table of Contents
- [Git Setup](#git-setup)
- [Clone Existing Frontend Code](#clone-existing-front-code)
- [Commit and Push Changes](#commit-and-push-changes)
- [Check Venus](#check-venus)

## Git Setup
1. Install `git` if not already installed.

   Run the following command:

   ```bash
   git --version
   ```

   If you get something similar to this, you have git installed:
   ```bash
   Ming@Mings-MacBook ~ % git --version
   git version 2.20.1 (Apple Git-117)
   ```

2. Set up your Git identity:

   ```bash
   git config --global user.name "John Doe"
   git config --global user.email johndoe@example.com
   ```

   Check your settings to make sure they are set up correctly:

   ```bash
   $ git config --list
   user.name=John Doe
   user.email=johndoe@example.com
   color.status=auto
   color.branch=auto
   color.interactive=auto
   color.diff=auto
   ...
   ```

(Reference: https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)

## Clone Existing Frontend Code

After setting up your Git environment, you want to download (clone) the frontend code to your local machine. Run the following command:

```bash
git clone https://github.com/cunymap/qmap-frontend.git
```

`cd` to your working directory:

```bash
cd qmap-frontend
```

Now you have your local copy of `master` branch. Start making changes accordingly.

## Commit and Push Changes

Add one or more files to staging:

```bash
git add <filename>  
git add *
```

To list the staging files or those you still need to add or commit:

```bash
git status
```

Commit changes to head:

```bash
git commit -m "Commit message"
```

Finally, push your commits on master branch to GitHub so other teammates can use them:

```bash
git push origin master
```

(Reference: https://github.github.com/training-kit/downloads/github-git-cheat-sheet.pdf)

## Check Venus

Now that you have pushed your commits to GitHub, CircleCI will run multiple unit testing of your changes.

Upon completion, you will be able to see your changes on live site: https://venus.cs.qc.cuny.edu/~dmap/
