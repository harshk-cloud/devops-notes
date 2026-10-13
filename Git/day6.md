# Day 6 - Git Branch Merging and Merge Conflicts

## Git Branch Merging

Meaning: Git merging combines changes from one branch into another branch.

Purpose: To combine the work completed on different branches.

Command: git merge feature

My Notes:
- Merging combines changes from different branches.
- First, switch to the branch where you want to merge the changes.
- To merge the feature branch into main, switch to main first.
- Git tries to merge the changes automatically.
- If Git cannot combine some changes automatically, a merge conflict occurs.


## Fast-Forward Merge

Meaning: A fast-forward merge moves the current branch pointer forward to the latest commit of another branch.

Purpose: To merge changes without creating an additional merge commit.

Command: git merge feature

My Notes:
- Fast-forward merging moves the current branch pointer forward.
- It is possible when the target branch has not progressed independently.
- No merge commit is created.
- Existing commits are preserved.
- If both branches have independent commits, a fast-forward merge is not possible.

Example:
```
    A---B---C  main
             \
              D---E  feature
```
After Fast-Forward Merge:
```
    A---B---C---D---E  main
```

## Git Branch --merged

Meaning: git branch --merged displays branches whose commits have been merged into the current branch.

Purpose: To identify branches whose work has already been merged and which may no longer be needed.

Command: git branch --merged

My Notes:
- It lists branches that have been merged into the current branch.
- The current branch is generally included in the output.
- It helps identify branches that may be safe to delete.
- Before deleting a branch, make sure you no longer need it.
- A branch being merged does not automatically mean it must be deleted.

Example:
```
    git switch main
    git branch --merged
```
- This command lists branches merged into main.


## Git Branch --no-merged

Meaning: git branch --no-merged displays branches that have commits not merged into the current branch.

Purpose: To identify branches that may still contain work that has not been integrated.

Command: git branch --no-merged

My Notes:
- It lists branches that have not been fully merged into the current branch.
- These branches may contain important work.
- Check these branches before deleting them.
- Git normally prevents deleting a branch with unmerged work when using the safe deletion command.
- Use git branch -d only when Git considers the deletion safe.
- Use git branch -D carefully because it force-deletes a branch.

Example:
```
    git switch main
    git branch --no-merged
```
- This command lists branches that have commits not merged into main.


## Three-Way Merge

Meaning: A three-way merge combines changes from two branches by comparing their common ancestor and the latest commits of both branches.

Purpose: To combine changes when both branches have progressed independently.

Command: git merge feature

My Notes:
- Git identifies the common ancestor of both branches.
- Git compares the changes made in both branches.
- If the changes can be combined automatically, Git completes the merge.
- A merge commit is generally created.
- If the same content has conflicting changes, a merge conflict may occur.

Example:
```
          C---D  feature
         /       \
    A---B         M  main
         \       /
          E---F

    M = Merge Commit
```

## Delete a Branch

Meaning: Deleting a branch removes its branch reference from the repository.

Purpose: To keep the repository clean after completing a feature.

Command: git branch -d feature

My Notes:
- git branch displays the local branches.
- git branch -d feature deletes a branch when Git considers it safe to delete.
- Git usually prevents deletion if the branch contains unmerged work.
- git branch -D feature force-deletes a branch.
- Use force deletion carefully because you may lose easy access to unmerged commits.
- Switch to another branch before deleting the branch you no longer need.


## Squash Merge

Meaning: A squash merge combines changes from a feature branch without preserving its individual commits as separate commits on the target branch.

Purpose: To keep the target branch history clean by combining multiple feature commits into one commit.

Command: git merge --squash feature

My Notes:
- Squash merging combines the changes from the feature branch.
- It does not create a normal merge commit.
- The combined changes are staged for committing.
- You must create the commit separately.
- Individual feature commits are not preserved as individual commits on the target branch.

Example:
```
    Feature Branch:

    A---B---C---D

    Main Branch:

    A

    After Squash Merge and Commit:

    A---S

    S = Single commit containing combined changes
```

## Git Commit After Squash Merge

Meaning: After a squash merge, Git prepares the combined changes for a new commit.

Purpose: To save the combined feature changes as a single commit on the current branch.

Command: git commit -m "Add new feature"

My Notes:
- First, switch to the target branch.
- Run git merge --squash feature.
- Check the staged changes using git status.
- Create a commit using git commit -m "Add new feature".
- The target branch contains one commit for the combined changes.
- The original feature branch is not automatically deleted.


## Merge Conflict

Meaning: A merge conflict occurs when Git cannot automatically combine changes from different branches.

Purpose: To allow the developer to decide which changes should remain in the final file.

Command: git merge feature

My Notes:
- A merge conflict commonly occurs when the same part of a file has been changed differently in two branches.
- Git identifies the file containing the conflict.
- Git cannot complete the merge until the conflicts are resolved.
- You must manually edit the conflicting file.
- After resolving the conflict, use git add to mark the file as resolved.

Example:
```
    CONFLICT (content): Merge conflict in hello.txt

    Automatic merge failed;
    fix conflicts and then commit the result.
```

## Conflict Markers

Meaning: Conflict markers are special lines inserted into a file to show conflicting changes from different branches.

Purpose: To identify the conflicting content so the developer can resolve it.

Command: vi hello.txt

My Notes:
- <<<<<<< HEAD marks the beginning of the current branch's content.
- ======= separates the two conflicting versions.
- >>>>>>> feature marks the end of the incoming branch's content.
- Decide which content to keep.
- You can keep either version or combine both versions.
- Remove all conflict markers before saving the resolved file.

Example:
```
    <<<<<<< HEAD
    Hello from main
    =======
    Hello from feature
    >>>>>>> feature

Resolved Content:

    Hello from main and feature
```

## Git Status During a Merge Conflict

Meaning: git status displays the current repository state, including files that have unresolved merge conflicts.

Purpose: To identify conflicting files and understand what needs to be done before completing the merge.

Command: git status

My Notes:
- Git displays the current branch.
- Git reports when there are unmerged paths.
- Files with unresolved conflicts appear under the unmerged paths section.
- The message both modified: hello.txt indicates that the file was modified in both branches.
- Resolve the conflict before continuing the merge.

Example:
```
    On branch main

    You have unmerged paths.

    Unmerged paths:
        both modified: hello.txt
```

## Git Add After Resolving Conflicts

Meaning: git add stages a file after its conflicting content has been resolved.

Purpose: To tell Git that the file's conflict has been resolved.

Command: git add hello.txt

My Notes:
- First, open the conflicting file.
- Edit the file and remove the conflict markers.
- Save the file.
- Run git add hello.txt.
- You can use git add . to stage all changes in the current directory and its subdirectories.
- Be careful with git add . because it may stage other changes as well.
- Staging a resolved file does not itself complete the merge.

Example:
```
    git status
    vi hello.txt
    git add hello.txt
    git status
```

## Git Merge Continue

Meaning: git merge --continue continues an ongoing merge after conflicts have been resolved and the affected files have been staged.

Purpose: To complete the merge process after resolving conflicts.

Command: git merge --continue

My Notes:
- Resolve all conflicting files.
- Remove the conflict markers from the files.
- Stage the resolved files using git add.
- Run git merge --continue.
- Git may open an editor to confirm the merge commit message.
- Save the commit message and close the editor to finish the merge.
- In Vim, press Esc, type :wq, and press Enter.


## Git Merge Abort

Meaning: git merge --abort cancels an ongoing merge operation.

Purpose: To return to the state before the merge began when possible.

Command: git merge --abort

My Notes:
- Use this command when you want to cancel an ongoing merge.
- It does not resolve the merge conflicts.
- Git attempts to restore the working tree and index to their pre-merge state.
- Be careful if you have made additional changes during the merge.
- Check the repository state using git status after aborting the merge.


## Git Merge Continue vs Git Merge Abort

Meaning: Both commands control an ongoing merge, but they perform different actions.

Purpose: To choose whether to complete the merge or cancel it.

Command:
- git merge --continue
- git merge --abort

My Notes:
- git merge --continue continues the merge after resolving and staging conflicts.
- git merge --abort cancels the ongoing merge.
- git status helps you check the current repository state.
- Use git merge --continue when you want to complete the merge.
- Use git merge --abort when you want to cancel the merge.


## Git Merge Conflict Workflow

Meaning: A merge conflict workflow is the sequence of steps used to resolve conflicting changes and complete a merge.

Purpose: To merge branches correctly without leaving unresolved conflicts.

Command:
```
    git switch main
    git merge feature
    git status
    vi hello.txt
    git add hello.txt
    git merge --continue
```
My Notes:
- Switch to the target branch.
- Start the merge.
- If a conflict occurs, check the conflicting files using git status.
- Open each conflicting file and resolve the conflicting content.
- Remove the conflict markers.
- Save the file and stage it using git add.
- Continue the merge using git merge --continue.
- If you decide not to proceed, use git merge --abort.
- After completing the merge, verify the result using git status and git log --oneline --graph --all.


## Key Learnings

- Branch merging combines changes from different branches.
- Fast-forward merging moves the branch pointer forward without creating a merge commit.
- git branch --merged lists branches whose commits have been merged into the current branch.
- git branch --no-merged lists branches that have commits not merged into the current branch.
- Three-way merging combines independently developed changes.
- A merge commit records the merging of branch histories.
- git branch -d safely deletes a branch when Git considers deletion safe.
- git branch -D force-deletes a branch.
- git merge --squash combines changes without creating a normal merge commit.
- A merge conflict occurs when Git cannot automatically combine conflicting changes.
- Conflict markers identify the conflicting content.
- git status helps identify unresolved conflicts.
- git add stages a resolved file.
- git merge --continue continues the merge after conflicts are resolved.
- git merge --abort cancels an ongoing merge.
- Always verify the repository state after completing a merge.
