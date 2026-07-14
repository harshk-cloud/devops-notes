# Day 9 - Linux Terminal Hacks

## cd

Meaning: Change Directory

Purpose: Used to move from one directory (folder) to another.

Example:
`cd Desktop`

My Notes:
- Moves into the Desktop directory.
- Used for directory navigation.


## cd /

Meaning: Go to the Root Directory

Purpose: Takes you directly to the root (/) of the Linux filesystem.

Example:
`cd /`

My Notes:
- / is the top-level directory in Linux.
- All other directories exist under the root directory.


## cd

Meaning: Go to Home Directory

Purpose: Returns you to your home directory from anywhere.

Example:
`cd`

My Notes:
- Same as `cd ~`.
- Returns directly to your home directory.


## Absolute Path Navigation

Meaning: Navigate using the complete directory path.

Purpose: Opens the target directory directly using its full path.

Example:
`cd /usr/var/sniffjoke/generic`

My Notes:
- Starts from the root directory (`/`).
- Works from any location.
- This is called Absolute Path Navigation.


## cd ..

Meaning: Move One Directory Back

Purpose: Moves to the parent directory.

Example:
`cd ..`

My Notes:
- Goes one level up.
- If current directory is `/usr/var/sniffjoke/generic`, it becomes `/usr/var/sniffjoke`.


## cd ../../

Meaning: Move Two Directories Back

Purpose: Moves back two parent directories in one command.

Example:
`cd ../../`

My Notes:
- Faster than running `cd ..` twice.
- If current directory is `/usr/var/sniffjoke/generic`, it becomes `/usr/var`.


## clear

Meaning: Clear the Terminal Screen.

Purpose: Removes the visible output from the terminal.

Example:
`clear`

My Notes:
- Clears only the screen.
- Command history is not deleted.
- Shortcut: `Ctrl + L`


## Command History

Meaning: Access previously executed commands.

Purpose: Reuse old commands without typing them again.

Example:
`↑` (Up Arrow)

My Notes:
- Up Arrow shows the previous command.
- Down Arrow shows the next command.


## cd -

Meaning: Switch to the Previous Directory.

Purpose: Toggles between the current and previous working directory.

Example:
`cd -`

My Notes:
- Switches back to the previous directory.
- Running it again returns to the current directory.


## echo $OLDPWD

Meaning: Display the Previous Working Directory.

Purpose: Shows the path stored in the `OLDPWD` environment variable.

Example:
`echo $OLDPWD`

My Notes:
- `OLDPWD` stores the previous working directory.
- Used by the `cd -` command.


## pwd

Meaning: Print Working Directory

Purpose: Displays the full path of the current working directory.

Example:
`pwd`

My Notes:
- Shows your current location in the Linux filesystem.
- Useful when you are not sure which directory you are working in.


## ls

Meaning: List Directory Contents

Purpose: Displays the files and directories inside the current directory.

Example:
`ls`

My Notes:
- Lists visible files and folders.
- Does not show hidden files by default.


## ls -l

Meaning: Long Listing Format

Purpose: Displays detailed information about files and directories.

Example:
`ls -l`

My Notes:
- Shows file permissions.
- Shows owner and group.
- Shows file size.
- Shows last modified date and time.
- Shows file or directory name.


## ls -al

Meaning: Long Listing with Hidden Files

Purpose: Displays detailed information including hidden files.

Example:
`ls -al`

My Notes:
- Shows all files, including hidden files.
- Hidden files start with a dot (`.`).
- Combines the features of `-a` and `-l`.


## ll

Meaning: Alias for `ls -l`

Purpose: A shortcut to display files in long listing format.

Example:
`ll`

My Notes:
- Saves typing time.
- Usually predefined as an alias on many Linux systems.


## la

Meaning: Alias for `ls -al`

Purpose: A shortcut to display all files in long listing format.

Example:
`la`

My Notes:
- Displays hidden files along with detailed information.
- Usually predefined as an alias.


## alias

Meaning: Create a Custom Command

Purpose: Creates a shortcut for a longer command.

Example:
`alias lumas="ls -al"`

My Notes:
- Typing `lumas` will execute `ls -al`.
- Useful for frequently used commands.
- By default, aliases created this way are temporary.


## Temporary Alias

Meaning: Alias valid only for the current terminal session.

Purpose: Creates a shortcut that disappears after logout or closing the terminal.

Example:
`alias lumas="ls -al"`

My Notes:
- Works only in the current terminal session.
- Removed automatically after logout or terminal restart.


## Permanent Alias (.bashrc)

Meaning: Save aliases permanently.

Purpose: Makes aliases available every time you open a terminal.

Example:
`nano ~/.bashrc`

My Notes:
- Add your alias at the end of the `.bashrc` file.
- Example:
  `alias lumas="ls -al"`
- Save the file to make the alias permanent.


## Tab Auto Completion

Meaning: Automatically completes commands and file names.

Purpose: Saves time and reduces typing mistakes.

Example:
`nano .ba` + `Tab`

My Notes:
- Press `Tab` to complete the command or filename.
- Press `Tab` twice to see all matching options.


## Terminal Shortcuts

### Zoom In

Meaning: Increase terminal text size.

Purpose: Makes terminal text easier to read.

Example:
`Ctrl + +`

My Notes:
- Increases the terminal font size.


### Zoom Out

Meaning: Decrease terminal text size.

Purpose: Reduces the terminal font size.

Example:
`Ctrl + -`

My Notes:
- Decreases the terminal font size.


### Copy

Meaning: Copy selected text from the terminal.

Purpose: Copies text to the clipboard.

Example:
`Ctrl + Shift + C`

My Notes:
- Normal `Ctrl + C` is used to stop a running process.


### Paste

Meaning: Paste copied text into the terminal.

Purpose: Pastes clipboard content.

Example:
`Ctrl + Shift + V`

My Notes:
- Used to paste copied commands or text.


### Ctrl + A

Meaning: Move Cursor to the Beginning of the Line.

Purpose: Quickly jumps to the start of the current command.

Example:
`Ctrl + A`

My Notes:
- Useful when editing long commands.


### Ctrl + E

Meaning: Move Cursor to the End of the Line.

Purpose: Quickly jumps to the end of the current command.

Example:
`Ctrl + E`

My Notes:
- Saves time while editing commands.


### Ctrl + U

Meaning: Delete Text Before the Cursor.

Purpose: Removes everything from the cursor position to the beginning of the line.

Example:
`Ctrl + U`

My Notes:
- Deleted text can be restored using `Ctrl + Y`.


### Ctrl + K


Meaning: Delete Text After the Cursor.

Purpose: Removes everything from the cursor position to the end of the line.

Example:
`Ctrl + K`

My Notes:
- Useful for quickly deleting the remaining part of a command.


### Ctrl + Y

Meaning: Paste Deleted Text.

Purpose: Restores text deleted using `Ctrl + U` or `Ctrl + K`.

Example:
`Ctrl + Y`

My Notes:
- Restores only text deleted with kill shortcuts.
- Does not paste normal clipboard content.


### Alt + Backspace

Meaning: Delete the Previous Word.

Purpose: Removes one word to the left of the cursor.

Example:
`Alt + Backspace`

My Notes:
- Faster than deleting characters one by one.


### Ctrl + X, Ctrl + E

Meaning: Edit the Current Command in an Editor.

Purpose: Opens the current command in the default text editor for easier editing.

Example:
`Ctrl + X`, then `Ctrl + E`

My Notes:
- Useful for editing very long commands.
- Opens the command in the default editor (usually Nano).


## less

Meaning: View a File Page by Page.

Purpose: Opens large files without loading the entire file at once.

Example:
`less /var/log/auth.log`

My Notes:
- Better than `cat` for large files.
- Use `Space` for the next page.
- Use `b` for the previous page.
- Press `q` to exit.
- Use `/keyword` to search inside the file.


## sudo !!

Meaning: Re-run the Previous Command with sudo.

Purpose: Executes the last command with administrator privileges.

Example:
`sudo !!`

My Notes:
- `!!` represents the last executed command.
- Useful after getting a "Permission denied" error.
- Saves time by avoiding retyping the command.


## Linux Log Files

Meaning: Files that store system and application events.

Purpose: Helps monitor system activity and troubleshoot problems.

Example:
`/var/log/auth.log`

My Notes:
- Located inside `/var/log/`.
- Stores authentication and login-related events.
- Commonly used by Linux administrators and security professionals.


## tail

Meaning: Display the Last Lines of a File.

Purpose: Shows the latest entries of a file.

Example:
`tail /var/log/auth.log`

My Notes:
- Displays the last 10 lines by default.
- Useful for checking the latest log entries.


## tail -f

Meaning: Follow a File in Real Time.

Purpose: Continuously displays new lines added to a file.

Example:
`sudo tail -f /var/log/auth.log`

My Notes:
- Shows new log entries automatically.
- Useful for live monitoring.
- Press `Ctrl + C` to stop monitoring.


## Double Tab

Meaning: Display Available Auto-Completion Options.

Purpose: Shows all possible files, directories, or commands that match the current input.

Example:
`Tab` `Tab`

My Notes:
- Press `Tab` twice when multiple matches exist.
- Helps discover available files and directories.


## Ctrl + R

Meaning: Reverse Search Command History.

Purpose: Searches previously executed commands.

Example:
`Ctrl + R`

My Notes:
- Start typing to search command history.
- Press `Ctrl + R` again to move to the next matching command.
- Press the `Right Arrow` key or `Enter` to use the selected command.


## Ctrl + C

Meaning: Interrupt a Running Process.

Purpose: Stops the currently running command or process.

Example:
`Ctrl + C`

My Notes:
- Commonly used to stop `tail -f`.
- Does not close the terminal.
- Sends an interrupt signal to the running process.


# Key Learnings

- Learned advanced terminal navigation shortcuts.
- Created temporary and permanent aliases.
- Used Tab and Double Tab for faster command completion.
- Edited long commands efficiently using keyboard shortcuts.
- Learned to read large files using `less`.
- Used `sudo !!` to rerun the previous command with administrator privileges.
- Learned how Linux stores logs in `/var/log/`.
- Used `tail` to view recent log entries.
- Used `tail -f` for real-time log monitoring.
- Learned to search command history using `Ctrl + R`.
- Improved terminal productivity using Linux keyboard shortcuts.
