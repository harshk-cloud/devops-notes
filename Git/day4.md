# Day 4 - Git Branches


## Why Do We Need Branches?

When software has working/stable code, directly modifying that code can be risky.

Therefore, we create a separate branch for new features or bug fixes.

Example:
```
main -> A -> B -> C
                  \
                   feature-chat
```

## Git Init - Default Branch

Command: git init

When we run `git init`, Git creates a default branch.

The default branch name depends on the Git configuration. It can be `main` or `master`.


## Commit and HEAD

HEAD tells us which branch and commit we are currently working on.

Example:

HEAD -> main -> af9916f -> first commit

After the second commit:

```
HEAD -> main -> 9672151 -> second commit
                    |
                 af9916f
                    |
               first commit
```

## Creating a Branch

Command: git branch feature-chat

This command creates a new branch.

It does not automatically switch to the new branch.

Example:
```

             feature-chat
                  |
HEAD -> main -> 9672151
                  |
               af9916f

```

## Switching to a Branch

Command: git switch feature-chat

Older command: git checkout feature-chat

After switching:

```
HEAD -> feature-chat
            |
         9672151
            |
         af9916f
```

Now HEAD points to the `feature-chat` branch.

## Git Log --oneline

Command: git log --oneline

This command shows commits of the current branch in one-line format.

Example:
```
9672151 (HEAD -> main) second commit
af9916f first commit
```

If the current branch contains an additional commit:

```
60bd665 (HEAD -> feature-chat) chat function added
9672151 main second commit
af9916f first commit
```
Here, `feature-chat` has an additional commit, while `main` contains only the first and second commits.


## Git Log --oneline --all

Command: git log --oneline --all

The `--all` option shows commits from all branches.

Example:

```
60bd665 (feature-chat) chat function added
9672151 (HEAD -> main) second commit
af9916f first commit
```
This helps us see commits from different branches together.


## Modifying Branch Name

Command: git branch -m Feature_chat feature/chat

Here:
```
Feature_chat = old branch name
feature/chat = new branch name
```
Example:

Feature_chat -> feature/chat


## Deleting a Branch

Command: git branch -d branch-name

Example:

git branch -d Feature_chat

If the branch has not been merged, Git may show a warning or error.

For force deletion:

Command: git branch -D Feature_chat

`-D` forcefully deletes the branch.


## Listing Local Branches

Command: git branch

Example:
```
* main
  test-branch
```

The `*` indicates the current branch.

In this example, the current branch is `main`.


## Create and Immediately Switch to a Branch

Command: git switch -c test-branch-2

The `-c` option creates a new branch and immediately switches to it.

Example:
```
main
  |
9672151
  |
af9916f
```

After running:

git switch -c test-branch-2

The result is:
```
main
  |
9672151 <- HEAD -> test-branch-2
  |
af9916f
```

## Create and Switch Using Git Checkout

Command: git checkout -b test-branch-3

The `-b` option creates a new branch and immediately switches to it.

Both commands perform the same basic operation:

git switch -c test-branch-3

git checkout -b test-branch-3


## Current Branch Cannot Be Deleted

We cannot directly delete the branch that we are currently on.

First, switch to another branch.

Command: git switch main

Then delete the previous branch.

Command: git branch -d test-branch-3

For force deletion:

Command: git branch -D test-branch-3


## Deleting Multiple Branches

Command: git branch -d test-branch test-branch-2 test-branch-3

This deletes multiple branches with a single command.


## Switching Back to Main Branch

Command: git switch main

Example:
```
feature-chat
     |
  60bd665
     |
  9672151 <- main
     |
  af9916f
```

After running:

git switch main

HEAD points to:

HEAD -> main


## Git Diff

Command: git diff

`git diff` shows the difference between the Working Directory and the Staging Area.
```
Working Directory
       |
       | changes
       v
Staging Area
```

## Git Diff Between Branches

To see the difference between two branches:

Command: git diff main..feature/chat

This shows the differences between the `main` branch and the `feature/chat` branch.

Example:
```
main
  |
  ●
  |
  ●

feature/chat
  |
  ●
  |
  ●
  |
  ●
```

The difference can include new files and modified files.


## Git Diff Using One Branch Name

We can also provide only one branch name.

Command: git diff main

When only one branch name is provided, Git compares the current branch with the specified branch.

Example:
```
Current branch <--------> main
```

## Git Diff Between Commits

We can also compare two commits using their commit IDs.

Command: git diff <commit-id-1>..<commit-id-2>

Example:

Command: git diff 482fbeb..a3db3fe

This shows the differences between the two specified commits.


## Git Diff --name-only

Command: git diff --name-only main..feature/chat

`--name-only` shows only the names of the files that have changed or been added.

Example:
```
chat.txt
hello.txt
```

It does not show the actual content differences.


## Git Diff --name-status

Command: git diff --name-status main..feature/chat

`--name-status` shows the file names along with their change status.

Example:
```
A    chat.txt
M    hello.txt
```

Here:
```
A = Added
M = Modified
```
This clearly shows which files were added and which files were modified.


## Git Log and Git Diff

`git log` is used to view commit history.

Command: git log --oneline

`git diff` is used to compare differences between working states, branches, or commits.

Command: git diff main..feature/chat

Both commands can also work with branch names and commit IDs depending on what we want to check.


# Key Learnings

- Branches allow us to work on new features or bug fixes separately from stable code.
- `git init` initializes a Git repository and creates a default branch.
- The default branch can be `main` or `master` depending on the Git configuration.
- HEAD tells us which branch and commit we are currently working on.
- `git branch <branch-name>` creates a new branch.
- `git switch <branch-name>` switches to an existing branch.
- `git log --oneline` shows the commit history of the current branch.
- `git log --oneline --all` shows commits from all branches.
- `git branch -m <old-name> <new-name>` modifies a branch name.
- `git branch -d <branch-name>` deletes a branch normally.
- `git branch -D <branch-name>` forcefully deletes a branch.
- `git branch` lists local branches.
- The `*` symbol shows the current branch.
- `git switch -c <branch-name>` creates a new branch and immediately switches to it.
- `git checkout -b <branch-name>` also creates a new branch and immediately switches to it.
- The current branch cannot be deleted directly.
- Multiple branches can be deleted with a single `git branch -d` command.
- `git switch main` switches back to the main branch.
- `git diff` shows the difference between the Working Directory and Staging Area.
- `git diff main..feature/chat` compares two branches.
- `git diff main` compares the current branch with the specified branch.
- `git diff <commit-id-1>..<commit-id-2>` compares two commits.
- `git diff --name-only` shows only changed file names.
- `git diff --name-status` shows file names along with their change status.
- `A` means Added.
- `M` means Modified.
- `git diff` helps identify differences between different states, branches, or commits.
