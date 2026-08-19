# Day 1 - Git Basics


## What is Git?

Meaning: Git is a Version Control System (VCS) used to track changes and maintain project history.

Purpose: It helps developers maintain versions, create checkpoints, track changes, collaborate with teams, and manage project history.

Example:
```
Day 1 -> Project Working -> Checkpoint 1           Day 1 -> Commit 1
Day 2 -> New Changes    -> Checkpoint 2            Day 2 -> Commit 2
Day 3 -> More Changes   -> Checkpoint 3            Day 3 -> Commit 3
```


### What Git Helps With

- **Version History:** Maintains the history of changes made to a project.
- **Checkpoints:** Allows us to save important project states as commits.
- **Change Tracking:** Keeps track of changes made to project files.
- **Team Collaboration:** Helps multiple developers work on the same project.
- **Storage Efficiency:** Git manages project history efficiently instead of requiring separate full project copies for every version.
- **Automation:** Git can be integrated with testing, linting, and formatting workflows.


## Three Main Areas of Git

```
Working Directory
        |
        | git add
        v
Staging / Index Area
        |
        | git commit
        v
Local Repository
```

## Working Directory

Meaning: The area where we normally create and modify project files.

Purpose: This is where we do our actual work on files.


## Staging / Index Area

Meaning: The area where we select files or changes for the next commit.

Purpose: It allows us to choose exactly which changes should be included in the next commit.


## Local Repository

Meaning: The area where Git stores commits and maintains project history.


## Installing Git on Ubuntu

Command: sudo apt update

Meaning: Updates the local package information.

Command: sudo apt install git -y

Meaning: Installs Git using the APT package manager.

- sudo -> Runs the command with administrator privileges.
- apt -> Ubuntu/Debian package manager.
- install -> Installs a package.
- git -> Git package.
- -y -> Automatically answers Yes to confirmation prompts.

Command: git -v

Meaning: Shows the installed Git version.


## Creating a Git Repository

Command: mkdir project1

Meaning: Creates a directory named project1.

Command: cd project1

Meaning: Changes the current directory to project1.

Command: git status

Meaning: Shows the current status of the Git repository.

If the folder is not a Git repository, Git shows an error because the .git directory does not exist.

Command: git init

Meaning: Converts a normal folder into a Git repository.

Purpose: Creates the hidden .git directory containing Git's internal repository data.

Example:
```
Normal Folder
     |
     | git init
     v
Git Repository
```

Command: ls -a

Meaning:
```
- ls -> Lists files and directories.
- -a -> Shows hidden files and directories.
```

Purpose: Used to see the hidden .git directory.

Command: rm -rvf .git

Meaning:
```
- rm -> Remove/delete.
- -r -> Recursive.
- -v -> Verbose; shows what is being removed.
- -f -> Force.
```

Purpose: Removes the .git directory and converts the folder back into a normal folder without Git repository metadata.

Important: Do not use this command unless you intentionally want to remove the Git repository metadata.


## Creating a File

Command: ls

Meaning: Lists files and directories in the current working directory.

Command: echo "this is my first file 13:27:30" > first.txt

Meaning: Creates first.txt and writes the given text into it.

Command: cat first.txt

Meaning: Displays the contents of first.txt.


## Git Staging Area

Command: git ls-files

Meaning: Shows files currently tracked in Git's index/staging area.

Before git add, the output is empty because no file has been added to the index.

Command: git add first.txt

Meaning: Adds first.txt to the staging/index area.

Purpose: Selects first.txt to be included in the next commit.

Command: git ls-files

Meaning: Checks which files are currently present in the Git index.

After git add first.txt, first.txt appears in the output.


## Main Workflow

```
Working Directory
       |
       | git add
       v
Staging / Index Area
       |
       | git commit
       v
Local Repository
```


## Key Learnings

- Git is a Version Control System.
- Git maintains project history.
- A commit is a checkpoint in project history.
- Working Directory is where we create and modify files.
- Staging Area is where we select changes for the next commit.
- Local Repository stores commits and project history.
- git init converts a normal folder into a Git repository.
- .git contains Git's internal repository data.
- git status checks repository status.
- git add moves changes into the staging area.
- git ls-files shows files in Git's index.
- git commit will later save staged changes as a checkpoint.
