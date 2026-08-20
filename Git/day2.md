# Day 2 - Git Status, Git Add, .gitignore, Git RM and Git Restore

## Git Status

Meaning: `git status` shows the current state of the Git repository.

Purpose: It helps us understand what is happening with files in the Working Directory and Staging Area.

Command: git status

My Notes:
- `git status` is one of the most useful Git commands.
- It shows the current branch.
- It shows whether files are staged, modified, deleted, or untracked.
- It helps us understand what will be included in the next commit.
- Before committing changes, we should check `git status`.

Example:

```

Working Directory
       |
       | git add
       v
Staging Area
       |
       | git commit
       v
Repository
```


### Working Directory and Staging Area

Example:

```
Working Directory
-----------------
first.txt
second.txt

        |
        | git add first.txt
        v

Staging Area
------------
first.txt
```

My Notes:
- `first.txt` is in both the Working Directory and Staging Area.
- `second.txt` is only in the Working Directory.
- This means `first.txt` is staged, while `second.txt` is not staged yet.

## Git Status Short Format

Meaning: `git status -s` shows the status in a short format.

Purpose: It is useful when we want to quickly see the status of many files.

Command: git status -s

My Notes:
- `-s` means short status.
- Git uses two characters to show the state of a file.
- The first character represents the Staging Area.
- The second character represents the Working Directory.

Format:

```
XY filename

X = Staging Area status
Y = Working Directory status
```


### Common Status Characters

```
A  = Added
M  = Modified
D  = Deleted
?? = Untracked
```


### Example - Added File

Output:

```
A  first.txt
```

Meaning:
- `A` on the left means `first.txt` has been added to the Staging Area.
- There is no additional Working Directory change.


### Example - Untracked File

Output:

```
?? second.txt
```

Meaning:
- `second.txt` is not being tracked by Git.
- It is currently only in the Working Directory.
- Git has detected the file but it has not been added to the Staging Area.


### Example - Modified Staged File

Output:

```text
AM first.txt
```

Meaning:
- `A` on the left means the file is already staged.
- `M` on the right means the file was modified again in the Working Directory after it was staged.

Example:

```text
AM first.txt
A  second.txt
?? third.txt
```

My Notes:
- Left character = Staging Area status.
- Right character = Working Directory status.
- `A` = Added.
- `M` = Modified.
- `D` = Deleted.
- `??` = Untracked.


## Git LS-Files

Meaning: `git ls-files` displays files that Git is currently tracking.

Purpose: It helps us see the files that are already known to Git.

Command: git ls-files

My Notes:
- `git ls-files` can be used to see tracked files.
- It can also help us understand whether a file is present in Git's index.
- If a file has been staged, it can appear in the output of `git ls-files`.

Example:

```
first.txt
readme.md
application.c
docs/readme.md
```


## Adding a Single File

Meaning: `git add` moves a file's changes from the Working Directory to the Staging Area.

Purpose: It prepares the file for the next commit.

Command: git add first.txt

My Notes:
- `git add first.txt` stages only `first.txt`.
- The file is not committed yet.
- It is only prepared for a future commit.

Git workflow:

```
Working Directory
       |
       | git add first.txt
       v
Staging Area
       |
       | git commit
       v
Repository
```


## Adding Multiple Files

Meaning: Multiple files can be added to the Staging Area using one `git add` command.

Purpose: It saves time when several files need to be staged.

Command: git add first.txt second.txt

Another example:

git add third.txt four.txt

My Notes:
- Multiple file names can be written after `git add`.
- File names are separated by spaces.
- All specified files are added to the Staging Area.

Example:

```
git add first.txt second.txt third.txt four.txt
```

All four files are staged by one command.


## Adding Files Using Wildcards

Meaning: A wildcard can be used with `git add` to select multiple files based on their extension.

Purpose: It allows us to add multiple similar files without writing every filename.

Command: git add *.txt

Meaning:
- `*` represents multiple characters or filenames.
- `.txt` specifies the file extension.
- Therefore, `git add *.txt` adds `.txt` files from the current location.

Example:

```
first.txt
second.txt
third.txt
four.txt
readme.md
todo.md
```

Command: git add *.txt

Result:

```
first.txt
second.txt
third.txt
four.txt
```

The `.md` files are not selected by `*.txt`.

Another command:

git add *.md

This adds `.md` files.

Example:

```
readme.md
todo.md
docs.md
```

My Notes:
- `git add *.txt` adds matching `.txt` files.
- `git add *.md` adds matching `.md` files.
- The wildcard works according to the pattern provided.

## Adding Everything

Meaning: `git add .` adds changes from the current location to the Staging Area.

Purpose: It is useful when we want to stage all eligible files and changes from the current directory.

Command: git add .

My Notes:
- `git add .` is commonly used to stage multiple changes.
- It stages files and changes from the current location.
- It does not create a commit.
- The changes are only moved to the Staging Area.

Example:

```
Working Directory
       |
       | git add .
       v
Staging Area
       |
       | git commit
       v
Repository
```

Important:
- Staging is not the same as committing.
- `git add .` only prepares the changes.
- `git commit` is required to create a commit.


## Modifying a Staged File

Meaning: A file can be modified again after it has already been staged.

Purpose: This helps us understand the `AM` status shown by `git status -s`.

Example: First, stage the file:

git add first.txt

Then modify the same file:

echo "first.txt modified" >> first.txt

Now run:

git status -s

Output:

```
AM first.txt
```

My Notes:
- The first `A` means the previous version of the file is already in the Staging Area.
- The `M` means the file has a new modification in the Working Directory.
- The newly modified content is not automatically added to the Staging Area.
- We need to run `git add first.txt` again if we want the latest modification to be staged.

Example:

```
Working Directory
       |
       | first.txt modified
       |
       v
Staging Area
       |
       +---- Previous staged version

Working Directory
       |
       +---- New modification
```


## .gitignore

Meaning: `.gitignore` is a special file used to tell Git which files or patterns should be ignored.

Purpose: It prevents unwanted files from being tracked or accidentally added to the Staging Area.

Command: vi .gitignore

My Notes:
- `.gitignore` is normally created in the root directory of the repository.
- It contains rules that tell Git which files should be ignored.
- Common examples include log files, executable files, generated files, and environment files.
- Ignored files normally do not appear as normal untracked files in `git status`.


## Ignoring Log Files

Inside `.gitignore`:

```
# Ignoring log files
*.log
```

Meaning:
- `*.log` tells Git to ignore files ending with `.log`.

Examples:

```text
application.log
serviceone.log
servicetwo.log
servicethree.log
```

These files can be ignored because they match the `*.log` pattern.

Command: git status

My Notes:
- After adding the rule, ignored log files should not appear as normal untracked files.
- The rule applies to files matching the pattern.


## Ignoring Executable Files

Inside `.gitignore`:

```

# Ignoring executables
*.exe
*.out
```

Examples:

```
output.exe
output.out
```

Meaning:
- `*.exe` ignores `.exe` files.
- `*.out` ignores `.out` files.

My Notes:
- Executable or generated output files are often not required in source control.
- `.gitignore` can prevent these files from being added accidentally.


## Comments in .gitignore

Meaning: A line beginning with `#` is a comment in `.gitignore`.

Example:

```

# Ignoring log files
*.log

# Ignoring executables
*.exe
*.out
```

My Notes:
- Comments are used to explain the rules.
- Git does not treat comment lines as file patterns.
- Comments make `.gitignore` easier to understand.


## Ignoring a Specific File

Meaning: We can specify an exact filename in `.gitignore`.

Example:

```
example.properties
```

This rule ignores a file named `example.properties`.

My Notes:
- A specific filename can be ignored without using a wildcard.
- This is useful when only a particular file needs to be ignored.


##  Ignoring a File Extension

Meaning: We can use `*` to ignore all files with a particular extension.

Example:

```
*.properties
```

This can ignore:

```
example.properties
development.properties
production.properties
```

My Notes:
- `*` represents any matching filename.
- `*.properties` applies to files with the `.properties` extension.


### Excluding a Specific File from an Ignore Pattern

Meaning: The `!` symbol is used to create an exception to an ignore pattern in `.gitignore`.

Purpose: It allows a specific file to be included even when a broader pattern is ignoring that type of file.

Example:

```
*.properties
!example.properties
```

My Notes:
- `*.properties` tells Git to ignore all `.properties` files.
- `!example.properties` creates an exception for `example.properties`.
- Therefore, other `.properties` files remain ignored.
- `example.properties` is not ignored.
- This allows `example.properties` to be added to the Git repository.

Example:

```
development.properties   -> Ignored
production.properties    -> Ignored
example.properties       -> Not ignored
```

Another example:

```
*.log
!important.log
```

Meaning:
- All `.log` files are ignored.
- `important.log` is an exception and is not ignored.

The `!` symbol is used when we want to ignore a general pattern but keep one specific file.


## Ignoring a Specific Path

Meaning: A path can be written in `.gitignore` when we want to ignore a file from a specific location.

Example:

```
/docs.md
```

Meaning:
- This targets `docs.md` in the root directory.

My Notes:
- A path is useful when the same filename exists in different directories.
- Instead of ignoring every `docs.md`, we can specify its exact location.

Example:

```
project1/
├── docs.md
├── c-proj/
│   └── docs.md
└── go-proj/
    └── docs.md
```

Using:

```
/docs.md
```

targets the root-level `docs.md`.


## Multiple .gitignore Files

Meaning: Different directories inside a repository can also contain their own `.gitignore` files.

Purpose: It allows different projects or directories to have their own ignore rules.

Example:

```
project1/
├── .gitignore
├── c-proj/
│   └── .gitignore
├── go-proj/
│   └── .gitignore
└── node-proj/
    └── .gitignore
```

My Notes:
- The root `.gitignore` can contain common rules.
- A subdirectory `.gitignore` can contain rules specific to that directory.
- This is useful when a repository contains multiple projects.

Example:

```
c-proj/
go-proj/
node-proj/
```

Each project can have its own `.gitignore`.


## Ignoring Environment Files

Meaning: Environment files often contain configuration or environment-specific information that should not be tracked.

Example:

```
.env
.env.*
```

My Notes:
- A project may contain environment-related files.
- Such files can be added to `.gitignore` when they should not be tracked.
- For example, a Node.js project can contain environment-specific files.

Example:

```
node-proj/
├── index.js
├── env.prod
├── env.example
└── .gitignore
```

The `.gitignore` file can contain rules to ignore environment files.

## Removing a File from the Staging Area

Meaning: `git rm --cached` removes a file from the Staging Area without deleting the file from the Working Directory.

Purpose: It is useful when a file was accidentally added to the Staging Area.

Command: git rm --cached wrong_file.txt

My Notes:
- Suppose `wrong_file.txt` was accidentally added using `git add .`.
- The file is now staged.
- We want to remove it from staging but keep the actual file.
- We use `git rm --cached`.

Before:

```
Working Directory
       |
       +---- wrong_file.txt
       |
       v
Staging Area
       |
       +---- wrong_file.txt
```

After:

```
Working Directory
       |
       +---- wrong_file.txt
       |
       v
Staging Area
       |
       +---- wrong_file.txt removed
```

Important:
- The file is not deleted from the Working Directory.
- Only its staged/tracked state is removed.
- It can become untracked again.


## Force Removing a File

Meaning: `git rm -f` forcefully removes a file from Git and the Working Directory.

Purpose: It is used when we want to completely remove the file.

Command: git rm -f wrong_file.txt

My Notes:
- `-f` means force.
- The file is removed from the Working Directory.
- Git also removes it from its tracked/staged state.
- This is different from `git rm --cached`.

Comparison:

```
Linux rm
   |
   +----> Removes file from Working Directory


git rm --cached
   |
   +----> Removes file from Staging Area
   |
   +----> Keeps file in Working Directory


git rm -f
   |
   +----> Removes file from Git
   |
   +----> Removes file from Working Directory
```


## Linux rm vs Git rm

Meaning: Linux `rm` and Git `rm` perform different operations.

Example:

Linux command: rm wrong_file.txt

My Notes:
- Linux `rm` deletes the file from the Working Directory.
- It does not automatically update the Staging Area in the same way as `git rm`.
- If the file was already staged, Git can still have the staged version.

Example:

```
Staging Area
       |
       +---- wrong.txt
       |
       |
Working Directory
       |
       +---- wrong.txt
```

After:

rm wrong.txt

```
Staging Area
       |
       +---- wrong.txt still exists


Working Directory
       |
       +---- wrong.txt deleted
```

Git can then show the deletion using `git status`.


## Git Restore

Meaning: `git restore` can restore a file in the Working Directory from the version available in the Staging Area.

Purpose: It can bring back a file that was deleted from the Working Directory while its staged version is still available.

Command: `git restore wrong.txt`

My Notes:
- Suppose `wrong.txt` was staged.
- Then we delete it using Linux `rm`.
- The file disappears from the Working Directory.
- The staged version is still available.
- `git restore wrong.txt` can restore the file back to the Working Directory.

Before deletion:

```
Working Directory
       |
       +---- wrong.txt
       |
       v
Staging Area
       |
       +---- wrong.txt
```

After:

rm wrong.txt

```
Working Directory
       |
       +---- wrong.txt deleted


Staging Area
       |
       +---- wrong.txt still available
```

Restore:

git restore wrong.txt

After restore:

```
Staging Area
       |
       +---- wrong.txt
       |
       | git restore wrong.txt
       v
Working Directory
       |
       +---- wrong.txt restored
```

My Notes:
- After running `git restore wrong.txt`, the file comes back to the Working Directory.
- Running `ls` again will show `wrong.txt`.
- `git restore` has other uses, but this video focuses on restoring a deleted Working Directory file.


## Git Restore and Deleted File Status

Meaning: When a tracked or staged file is deleted from the Working Directory, Git can show the deletion in its status.

Command:

git status -s

Example output:

```
D  wrong.txt
```

Meaning:
- `D` indicates that the file has been deleted.
- The exact position of the status character tells us where the change exists.

Then:

git restore wrong.txt

After restoring the file:

```
Working Directory
       |
       +---- wrong.txt restored
```

My Notes:
- `git restore` can recover the file using the version available to Git.
- The file becomes available again in the Working Directory.


## Complete Git File Flow

The overall flow covered in these videos:

```
                 Git Workflow

        +----------------------+
        |   Working Directory  |
        +----------------------+
                  |
                  | git add
                  v
        +----------------------+
        |    Staging Area      |
        +----------------------+
                  |
                  | git commit
                  v
        +----------------------+
        |      Repository      |
        +----------------------+
```

Removing from staging:

```
Staging Area
     |
     | git rm --cached file
     v
Working Directory
```

Removing completely:

```
Git + Working Directory
          |
          | git rm -f file
          v
        Removed
```

Restoring:

```
Staging Area
     |
     | git restore file
     v
Working Directory
     |
     v
   Restored
```


## Key Learnings

- `git status` shows the current state of the repository.
- `git status -s` shows the status in short format.
- In `git status -s`, the left character represents the Staging Area.
- The right character represents the Working Directory.
- `A` means Added.
- `M` means Modified.
- `D` means Deleted.
- `??` means Untracked.
- `git ls-files` shows files currently tracked by Git.
- `git add <file>` stages a specific file.
- `git add file1 file2` stages multiple files.
- `git add *.txt` stages matching `.txt` files.
- `git add *.md` stages matching `.md` files.
- `git add .` stages eligible files and changes from the current location.
- Staging a file does not create a commit.
- A file can be modified again after being staged.
- `AM` can indicate that a file is staged and then modified again in the Working Directory.
- `.gitignore` tells Git which files and patterns should be ignored.
- `*.log` can ignore log files.
- `*.exe` can ignore executable files.
- `*.out` can ignore output files.
- `*.properties` can ignore all `.properties` files.
- A specific filename can be added to `.gitignore`.
- A specific path can be added to `.gitignore`.
- Different directories can have their own `.gitignore` files.
- `git rm --cached <file>` removes a file from the Staging Area while keeping it in the Working Directory.
- `git rm -f <file>` removes a file from Git and the Working Directory.
- Linux `rm` removes a file from the Working Directory.
- A staged version can still exist after the Working Directory copy is deleted.
- `git restore <file>` can restore a deleted Working Directory file from the available Git version.
````
