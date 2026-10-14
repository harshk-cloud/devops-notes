# Day 7 - Git Rebase and Shortlog


## Git Rebase

Meaning: `git rebase` reapplies the commits of one branch on top of another branch's latest commit.

Purpose: To update a feature branch with the latest changes from the main branch and maintain a linear commit history.

Command:
```
    git switch feature
    git rebase main
```
My Notes:

- Suppose the main branch has one commit, A.
- The feature branch has three additional commits: B, C, and D.
- When we run `git rebase main`, Git reapplies the feature branch commits on top of the latest main commit.

Before Rebase:
```
    A (main)
     \
      B --- C --- D (feature)
```
After Rebase:
```
    A --- B1 --- C1 --- D1 (feature)
     ^
     main
```
- The feature branch commits are recreated on top of the latest main commit.
- The commit hashes may change because Git creates new commits.
- Rebase does not automatically merge the feature branch into main.


## Git Rebase Conflict

Meaning: A rebase conflict occurs when Git cannot automatically apply changes from a commit.

Purpose: To resolve conflicting changes manually and complete the rebase.

Command: git rebase main

My Notes:

- A conflict can occur when main and feature branches modify the same part of a file differently.
- Git pauses the rebase and asks us to resolve the conflict.
- Open the conflicted file in a text editor.
- Git may show conflict markers like these:
```
    <<<<<<< HEAD
    Changes from main
    =======
    Changes from feature
    >>>>>>> commit-id
```
- Choose the correct content and remove the conflict markers.
- Save the file before continuing.


## Git Rebase --Abort

Meaning: `git rebase --abort` cancels the current rebase operation.

Purpose: To stop a rebase when we do not want to continue resolving conflicts.

Command: git rebase --abort

My Notes:

- This command is used while a rebase is in progress.
- Git attempts to restore the branch to its state before the current rebase started.
- Use this command when you decide not to continue the rebase.


## Git Add During Rebase

Meaning: `git add .` stages the resolved changes in the current directory.

Purpose: To mark the resolved files as ready for the rebase to continue.

Command: git add .

My Notes:

- First, resolve the conflict in the file.
- Save the file.
- Run `git add .` to stage the resolved changes.
- Then continue the rebase process.


## Git Rebase --Continue

Meaning: `git rebase --continue` resumes a paused rebase operation.

Purpose: To continue applying the remaining commits after resolving a conflict.

Command:
```
    git add .
    git rebase --continue
```
My Notes:

- Resolve the conflict and save the file.
- Stage the resolved changes using `git add .`.
- Run `git rebase --continue`.
- Git may open a text editor to confirm the commit message.
- If another conflict occurs, resolve it and repeat the process.
- After successful completion, Git updates the feature branch reference.

Output: Successfully rebased and updated refs/heads/feature.


## Git Shortlog

Meaning: `git shortlog` groups commit history according to the author.

Purpose: To view the commits made by each author in a repository.

Command: git shortlog

My Notes:

- Git groups commit messages under each author's name.
- In a repository with multiple developers, each author has a separate group.
- The number in parentheses represents the number of commits attributed to that author.

Example Output:
```
    Gaurav Sharma (12):
        first commit
        second commit
        third commit

    Rahul Sharma (8):
        login feature added
        bug fixed
```
- Gaurav Sharma has 12 commits.
- Rahul Sharma has 8 commits.


## Git Shortlog -n

Meaning: `git shortlog -n` sorts authors according to their commit counts.

Purpose: To display authors with more commits before authors with fewer commits.

Command: git shortlog -n

My Notes:

- The author with the highest commit count appears first.
- Other authors follow according to their commit counts.
- This option helps compare contributions by commit count.


## Git Shortlog -e

Meaning: `git shortlog -e` displays each author's email address along with their name.

Purpose: To view author email information in the commit summary.

Command: git shortlog -e

My Notes:

- The `-e` option displays the author's email address.
- The author's name and email address appear together.


## Git Shortlog -n -e

Meaning: `git shortlog -n -e` sorts authors by commit count and displays their email addresses.

Purpose: To view a sorted author summary with email information.

Command: git shortlog -n -e

My Notes:

- `-n` sorts authors according to commit count.
- `-e` displays the email address.
- Both options can be used together.


## Git Shortlog -s

Meaning: `git shortlog -s` displays a summary containing the commit count for each author.

Purpose: To see how many commits each author has made without displaying individual commit messages.

Command: git shortlog -s

My Notes:

- The `-s` option suppresses individual commit messages.
- The output shows each author's commit count and name.

Example Output:
```
    12 Gaurav Sharma
     8 Rahul Sharma
     5 Amit Sharma
```
- Gaurav Sharma has 12 commits.
- Rahul Sharma has 8 commits.
- Amit Sharma has 5 commits.


## Key Learnings

- `git rebase main` reapplies feature branch commits on top of the latest main commit.
- Rebase can change commit hashes because commits are recreated.
- Rebase conflicts must be resolved manually.
- `git add .` stages the resolved changes.
- `git rebase --continue` resumes the rebase process.
- `git rebase --abort` cancels the current rebase operation.
- `git shortlog` groups commits according to their authors.
- `git shortlog -n` sorts authors according to commit count.
- `git shortlog -e` displays author email addresses.
- `git shortlog -n -e` combines sorting and email information.
- `git shortlog -s` displays only the summary of commit counts.
