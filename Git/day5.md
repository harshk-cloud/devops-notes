# Day 5 - Git Stash


## Git Stash

Meaning: `git stash` temporarily stores uncommitted changes.

Purpose: To temporarily save incomplete work so we can switch to another branch.

Command: `git stash -m "feature-chat-working"`

My Notes:
- Stash means temporarily hiding or storing current work.
- It is useful when the current feature is incomplete.
- We can store our working changes in stash and switch to another branch.
- After completing work on another branch, we can return to the previous branch.
- We can then apply the stashed changes and continue working.


## Why Git Stash?

Meaning: Git may not allow a branch switch when local changes can be overwritten.

Purpose: To safely keep incomplete work while switching branches.

Command: `git switch main`

My Notes:
- Suppose we are working on `feature/chat`.
- `chat.txt` is modified but the feature is not complete.
- An urgent bug needs to be fixed on the `main` branch.
- If we try to switch directly to `main`, Git can stop the operation.
- Git asks us to either commit or stash the changes.
- If the work is incomplete, we can use `git stash` instead of committing it.


## Git Stash with Message

Meaning: `-m` is used to give a message to the stash.

Purpose: To identify the saved stash easily.

Command: `git stash -m "feature-chat-working"`

My Notes:
- The modified work is temporarily stored in stash.
- The working directory becomes clean.
- The stash gets a message describing the saved work.


## Switch Branch After Stashing

Meaning: After stashing the changes, we can switch to another branch.

Purpose: To work on another branch without losing incomplete work.

Command: `git switch main`

My Notes:
- First, stash the incomplete feature work.
- Then switch to the `main` branch.
- A separate branch can be created for the bug fix.
- After fixing the bug, we can return to the feature branch.


## Git Stash List

Meaning: `git stash list` shows the stashes stored in Git.

Purpose: To see the available stashes.

Command: `git stash list`

My Notes:
- Each stash has a reference number.
- Example: `stash@{0}`
- Multiple stashes can be stored.
- The number helps identify which stash we want to apply or delete.


## Git Stash Apply

Meaning: `git stash apply` restores the changes from a selected stash.

Purpose: To bring previously stashed work back into the working directory.

Command: `git stash apply 0`

My Notes:
- `0` refers to `stash@{0}`.
- The stashed changes are restored.
- After applying the stash, we can continue working on the feature.

- The stash reference still remains after applying it.


## Git Stash Drop

Meaning: `git stash drop` deletes a specific stash.

Purpose: To remove a stash that is no longer needed.

Command: `git stash drop 0`

My Notes:
- `0` refers to `stash@{0}`.
- The selected stash is deleted.
- Other stashes remain available.


## Tracked and Untracked Files

Meaning: Git treats tracked and untracked files differently when using normal `git stash`.

Purpose: To understand which files are stored by the normal stash command.

Command: `git status -s`

My Notes:
- `chat.txt` is a modified tracked file.
- `user_chat.txt` is an untracked file.
- Normal `git stash` stores the tracked changes.
- The untracked file remains outside the stash.


## Git Stash All Files

Meaning: `-A` means all files.

Purpose: To stash tracked and untracked files together.

Command: `git stash -A -m "second stash"`

My Notes:
- `-A` is used to include all files in the stash.
- Both modified tracked files and untracked files are stored.
- A message can also be added with `-m`.
- `-A` and `-m` can be combined.


## Multiple Stashes

Meaning: Git can store multiple stashes at the same time.

Purpose: To temporarily keep different sets of unfinished work.

Command: `git stash list`

My Notes:
- Multiple stashes get different reference numbers.
- Example:
  - `stash@{0}` → second stash
  - `stash@{1}` → chat-feature-1
- We can select a specific stash using its number.


## Git Stash Clear

Meaning: `git stash clear` deletes all stored stashes.

Purpose: To completely empty the stash.

Command: `git stash clear`

My Notes:
- All stashes are deleted at once.
- After using `git stash clear`, `git stash list` shows no stashes.


## Important Git Stash Commands

Example:

git stash -m "message"

git stash list

git stash apply 0

git stash drop 0

git stash -A -m "message"

git stash clear

My Notes:
- `git stash` → temporarily stores changes.
- `git stash -m "message"` → stores changes with a message.
- `git stash list` → shows all stashes.
- `git stash apply 0` → applies stash `0`.
- `git stash drop 0` → deletes stash `0`.
- `git stash -A -m "message"` → stashes all files with a message.
- `git stash clear` → deletes all stashes.


## Key Learnings

- `git stash` temporarily stores uncommitted changes.
- Stash is useful when we need to switch branches without committing unfinished work.
- `git stash -m` stores changes with a message.
- `git stash list` shows saved stashes.
- `git stash apply` restores stashed changes.
- `git stash drop` deletes a specific stash.
- Normal `git stash` stores tracked changes.
- `git stash -A` stores all files, including untracked files.
- Multiple stashes can be stored and identified using stash numbers.
- `git stash clear` removes all stored stashes.
