# Day 3 - Git Commit, Log and Diff


## Git File Rename

Meaning: `git mv` is used to rename or move a file while keeping Git aware of the change.

Purpose: Rename or move a tracked file and update the staging area automatically.

Example:

git mv wrong.txt right.txt

My Notes:
- `wrong.txt` is the old file name.
- `right.txt` is the new file name.
- `git mv` renames the file.
- Git automatically stages the rename.
- Use `git status` to check the result.


## Git MV vs MV

Meaning: `mv` is a Linux command used to move or rename files, while `git mv` performs the operation with Git tracking.

Purpose: Understand the difference between normal file rename and Git-aware file rename.

Example:

mv wrong.txt right.txt

git mv wrong.txt right.txt

My Notes:
- `mv` → Linux move/rename command.
- `git mv` → Git move/rename command.
- `git mv` is useful for renaming tracked files.
- With normal `mv`, Git can detect the rename later, but `git mv` handles the rename and staging together.


## Git Status After Rename

Meaning: `git status` shows the current state of files in the Git repository.

Purpose: Check what Git has detected after renaming a file.

Example:

git status

My Notes:
- Git can detect a rename of a tracked file.
- `git status` helps verify the rename.
- It also shows modified, deleted, staged and untracked files.


## Git Commit

Meaning: A commit is a snapshot of the changes currently present in the staging area.

Purpose: Save staged changes into Git repository history.

Example:

git commit -m "First commit"

My Notes:
- `git commit` takes changes from the staging area.
- Unstaged working-directory changes are not included.
- `-m` is used to provide a commit message.

```
Working Directory
       |
    git add
       |
       v
 Staging Area
       |
   git commit
       |
       v
 Git Repository
```


## Git Commit Message

Meaning: A commit message describes what changes were made in a commit.

Purpose: Make Git history easy to understand later.

Example:

git commit -m "User module created and tested"

My Notes:
- `-m` means message.
- Commit messages should clearly describe the work done.
- Avoid unclear messages such as:

git commit -m "changes"

- Use meaningful messages such as:

git commit -m "User module created and tested"


## Git Commit --amend

Meaning: `git commit --amend` modifies the latest commit.

Purpose: Add a forgotten change to the previous commit instead of creating a separate commit.

Example:

git add forgotten.txt

git commit --amend

My Notes:
- First, add the forgotten file or change to the staging area.
- Then use `git commit --amend`.
- The staged change is included in the latest commit.
- `--amend` modifies the latest commit.

```
Forgotten Change
       |
    git add
       |
       v
 Staging Area
       |
git commit --amend
       |
       v
Updated Latest Commit
```


## Git Commit --amend -m

Meaning: `git commit --amend -m` modifies the latest commit and directly provides a new commit message.

Purpose: Change the latest commit message without opening the text editor.

Example:

git commit --amend -m "User module completed"

My Notes:
- If no new changes are staged, it can be used to change the latest commit message.
- If changes are staged, those changes can also be included in the amended commit.
- `--amend` always works on the latest commit.


## Git Commit -a

Meaning: `-a` automatically stages changes and deletions in already tracked files before committing.

Purpose: Commit tracked modified or deleted files without separately running `git add` for them.

Example:

git commit -a -m "Update files"

My Notes:
- `-a` works with already tracked files.
- Modified tracked files can be included.
- Deleted tracked files can be included.
- New untracked files are NOT automatically included.
- An untracked file must first be added with `git add`.

```
Tracked + Modified
        |
        v
     Included

Tracked + Deleted
        |
        v
     Included

Untracked File
        |
        v
   NOT Included
```


## Git Commit -a with Untracked File

Meaning: `git commit -a` does not automatically add a new untracked file.

Purpose: Understand the limitation of the `-a` option.

Example:

git commit -a -m "Update files"

My Notes:
- Suppose `first.txt` is tracked and modified.
- Suppose `newfile.txt` is a new untracked file.
- `git commit -a -m "Update files"` can commit the modification to `first.txt`.
- `newfile.txt` will remain untracked.
- To include the new file:

git add newfile.txt

git commit -m "Add new file"


## Recommended Commit Approach

Meaning: Explicitly staging the required changes before committing gives better control over what goes into a commit.

Purpose: Avoid accidentally including unrelated changes.

Example:

git status

git add first.txt

git commit -m "Complete first feature"

My Notes:
- `git add` lets you choose which changes should go into the commit.
- Avoid committing every tiny line change.
- Make commits around meaningful work such as:
  - Feature completed.
  - Module completed.
  - Ticket completed.
- A clean commit history is easier to understand and investigate later.

```
Complete Feature / Task
          |
          v
       git add
          |
          v
      git commit
          |
          v
   Meaningful Commit
```


## Git Log

Meaning: `git log` displays the commit history of a Git repository.

Purpose: View previous commits and understand the history of the project.

Example:

git log

My Notes:
- Shows commit hash.
- Shows author.
- Shows commit date.
- Shows commit message.
- Each commit has a unique hash.
- Useful for checking previous work.


## Git Log --oneline

Meaning: `--oneline` displays commit history in a short one-line format.

Purpose: Quickly view many commits without detailed information.

Example:

git log --oneline

My Notes:
- Shows short commit hash.
- Shows commit message.
- Output is much shorter than normal `git log`.
- Useful when you only want a quick history.


## Git Log --author

Meaning: `--author` filters commits according to the author.

Purpose: Find commits made by a particular developer.

Example:

git log --oneline --author="Gaurav"

My Notes:
- Useful when multiple developers work on the same repository.
- It searches the author information of commits.
- Can be combined with `--oneline`.


## Git Log --grep

Meaning: `--grep` searches for a keyword or text inside commit messages.

Purpose: Find commits whose commit message contains a specific word.

Example:

git log --oneline --grep="modified"

My Notes:
- `--grep` searches commit messages.
- It does NOT search inside file content.
- If `"modified"` exists in a commit message, that commit can be displayed.


## Git Log -S

Meaning: `-S` searches Git history for changes involving a specific string in file content.

Purpose: Find commits where a particular string was added or removed.

Example:

git log -S"modified"

My Notes:
- `-S` can be remembered as a search option.
- It searches changes in file content across commits.
- It is different from `--grep`.
- `--grep` searches commit messages.
- `-S` searches changes in file content.


## Git Log -S with --patch

Meaning: `-S` searches for a specific string in file changes and `--patch` shows the actual changes.

Purpose: Find when a particular piece of content was added or removed and see the exact change.

Example:

git log -S"modified" --patch

My Notes:
- `-S` → Search for content changes.
- `--patch` → Show the actual diff.
- Useful for investigating when a particular line, function or feature was introduced or removed.


## Git Log --since

Meaning: `--since` filters commits according to a specific date or time.

Purpose: Find commits made within a particular time period.

Example:

git log --since="10 days ago" --oneline

My Notes:
- Useful for checking recent project activity.
- Can be used with other `git log` options.
- This command shows commits made during the specified time period.


## Git Log A..B

Meaning: `A..B` shows commits that are reachable from B but not from A.

Purpose: View commits between two points in Git history.

Example:

git log A..B

My Notes:
- `A` is the starting reference.
- `B` is the ending reference.
- It shows commits from A to B that are not already reachable from A.
- Useful for checking the commits between two commit references.

```
A -------------------- B
|                      |
Start                  End

A..B
 |
 v
Commits reachable from B
but not from A
```


## Git Log --reverse

Meaning: `--reverse` displays commit history from oldest to newest.

Purpose: Read Git history in chronological order.

Example:

git log --reverse

My Notes:
- Normal `git log` shows newest commits first.
- `--reverse` changes the order.
- Oldest commit appears first.
- Newest commit appears last.

Normal git log:
```
Newest
   |
   v
Commit 4
Commit 3
Commit 2
Commit 1
   |
   v
Oldest
```

git log --reverse:

```
Oldest
   |
   v
Commit 1
Commit 2
Commit 3
Commit 4
   |
   v
Newest
```


## Git Log --stat

Meaning: `--stat` displays statistics about changes made in commits.

Purpose: See which files changed and how many lines were added or deleted.

Example:

git log --stat

My Notes:
- Shows changed file names.
- Shows the number of insertions.
- Shows the number of deletions.
- Gives a summary of changes.
- `--stat` means statistics.


## Git Log --graph

Meaning: `--graph` displays commit history as a visual ASCII graph.

Purpose: Understand the relationship between commits and branches.

Example:

git log --graph

My Notes:
- Displays commit history using an ASCII graph.
- It becomes more useful when branches are used.
- Helps understand the structure of Git history.


## Git Diff

Meaning: `git diff` shows the differences between the working directory and the staging area.

Purpose: Check what has been modified before staging or committing.

Example:

git diff

My Notes:
- Shows changes that are not staged yet.
- Helps check exactly what was added, removed, or modified.
- Useful before running `git add`.
- If a file is already staged, `git diff` will not show those staged changes.

Example:

- old line removed
+ new line added


## Git Diff --staged

Meaning: `git diff --staged` shows the differences between the staging area and the last commit.

Purpose: Check what changes are currently staged before committing.

Example:

git diff --staged

My Notes:
- Shows changes that are already staged.
- Useful before running `git commit`.
- Compares staged changes with the last commit.
- `git diff` checks unstaged changes.
- `git diff --staged` checks staged changes.

```
Working Directory
       |
     git add
       |
       v
Staging Area
       |
       | git diff --staged
       v
Last Commit
```

## Git Log --patch

Meaning: `--patch` shows the actual changes made in commits.

Purpose: See exactly what was added or removed in previous commits.

Example:

git log --patch

My Notes:
- Normal `git log` shows commit information.
- `git log --patch` also shows the actual changes.
- `--patch` can also be written as `-p`.
- Useful for inspecting the exact changes made in commits.


## Git Log --patch --reverse

Meaning: `--patch --reverse` shows commit changes from the oldest commit to the newest commit.

Purpose: Understand how the project changed step by step.

Example:

git log --patch --reverse

My Notes:
- `--patch` shows the actual changes.
- `--reverse` changes the order to oldest first.
- Useful for understanding the evolution of a project.
- The oldest commit is displayed first.


## Git Log -S

Meaning: `-S` searches Git history for changes involving a specific string in file content.

Purpose: Find commits where a particular string was added or removed.

Example:

git log -S"modified"

My Notes:
- `-S` searches for a specific string in historical file changes.
- It helps find the commit where a particular piece of content was added or removed.
- It searches file content changes, not commit messages.
- Simple meaning: search Git history for a specific string.

Example:

git log -S"modified" --patch

- `-S` searches for the string.
- `--patch` shows the actual changes.


## Git Log --grep

Meaning: `--grep` searches for a keyword or text inside commit messages.

Purpose: Find commits whose commit message contains a specific word.

Example:

git log --oneline --grep="modified"

My Notes:
- `--grep` searches commit messages.
- It does not search inside file content.
- Useful when you remember a word used in a commit message.


## Git Log --grep vs -S

Meaning: Both are used to search Git history, but they search different things.

Purpose: Understand when to use `--grep` and when to use `-S`.

Example:

git log --oneline --grep="modified"

git log -S"modified"

My Notes:
- `--grep` searches commit messages.
- `-S` searches changes in file content.
- They are not the same.
- `--grep` is similar to searching text in commit messages.
- `-S` searches for a string in the content changes of files.

```
git log --grep="modified"
          |
          v
    Commit Messages
          |
        Search

git log -S"modified"
          |
          v
   File Content Changes
          |
        Search
```


## Key Learnings

- `git mv` is used to rename or move files while keeping Git history tracked.
- `git commit` saves a snapshot of staged changes into the Git repository.
- `git commit -m "message"` is used to create a commit with a message.
- `git commit --amend` modifies the latest commit.
- `git commit -a -m "message"` stages and commits changes to already tracked files in one command.
- `git log` shows the commit history of a repository.
- `git log --oneline` shows commit history in a short format.
- `git log --since="10 days ago" --oneline` filters commits based on time.
- `git log A..B` shows commits reachable from B but not from A.
- `git log --reverse` displays history from oldest to newest.
- `git log --stat` shows statistics about changed files, insertions, and deletions.
- `git log --graph` displays commit history as an ASCII graph.
- `git log --patch` shows the actual changes made in commits.
- `git diff` shows unstaged changes between the working directory and staging area.
- `git diff --staged` shows staged changes compared with the last commit.
- `git log -S"keyword"` searches file content changes in Git history.
- `git log --grep="keyword"` searches for a keyword inside commit messages.
- `-S` and `--grep` are different:
  - `-S` -> searches file content changes.
  - `--grep` -> searches commit messages.
- Git history commands help us find, inspect, and understand changes made throughout a project.
