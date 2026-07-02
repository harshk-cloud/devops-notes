# Day 4 - Linux User and Group Management

## adduser

Meaning:

Creates a new user account interactively. It asks for details such as password, full name, and other information.

Purpose: Used to create a new Linux user with an easy interactive setup.

Syntax: sudo adduser username

Example: sudo adduser thor

Output:

The system asks for:
- New Password
- Retype Password
- Full Name
- Room Number (Optional)
- Work Phone (Optional)
- Home Phone (Optional)
- Other Information (Optional)

Finally, it creates the user account successfully.

My Notes:

- `adduser` is beginner-friendly.
- It automatically creates a home directory.
- It also creates a user group with the same name.
- Administrative privileges are required, so `sudo` is used.


## useradd

Meaning: Creates a new Linux user account using a low-level command.

Purpose: Used to create a user quickly without asking interactive questions.

Syntax: sudo useradd username

Example: sudo useradd loki

Output:

The user account is created immediately without asking for:
- Password
- Full Name
- Confirmation

My Notes:

- `useradd` is faster than `adduser`.
- By default it does not create a home directory.
- By default the login shell may be `/bin/sh`.
- Password must be set manually after creating the user.

---

## cat /etc/passwd

Meaning:

Displays the contents of the `/etc/passwd` file.

Purpose:

Shows all user accounts available on the Linux system.

Syntax: cat /etc/passwd

Example: cat /etc/passwd

Example Output: thor:x:1001:1001:Thor:/home/thor:/bin/bash

Field Explanation:

- `thor` → Username
- `x` → Password is stored in `/etc/shadow`
- `1001` → User ID (UID)
- `1001` → Group ID (GID)
- `Thor` → User Description (GECOS Field)
- `/home/thor` → Home Directory
- `/bin/bash` → Default Login Shell

My Notes:

- This file stores user account information.
- It does not contain actual passwords.
- It is commonly used to verify whether a user exists.

---

## cat /etc/shadow

Meaning: Displays the encrypted password information of Linux users.

Purpose: Used to view password-related information stored securely by the system.

Syntax: sudo cat /etc/shadow


Example: sudo cat /etc/shadow

Example Output: loki:!:20636:0:99999:7:::

My Notes:

- Only the root user or a user with `sudo` privileges can access this file.
- Passwords are stored in encrypted (hashed) form.
- `!` indicates that no password has been set or the account is locked.

---

## passwd

Meaning: Sets or changes a user's password.

Purpose: Used to assign a password to a user or change an existing password.

Syntax: sudo passwd username

Example: sudo passwd loki

Output: 

New password:
Retype new password:
passwd: password updated successfully

My Notes:

- `passwd` is used to create or change passwords.
- After using `useradd`, this command is required if the user has no password.
- Only users with administrative privileges can change another user's password.


## ls -al

Meaning:

Lists all files and directories, including hidden files, in long listing format.

Purpose:

Displays detailed information about all files and directories in the current directory.

Syntax:

ls -al

Example:

ls -al

Output:

Shows:
- File permissions
- Number of links
- Owner
- Group
- File size
- Last modified date
- File or directory name

My Notes:

- `ls` = List files and directories.
- `-a` = Shows hidden files.
- `-l` = Displays detailed information.
- `ls -al` combines both options.

---

## usermod

Meaning: Modifies an existing Linux user account.

Purpose: Used to change user account settings such as username, login shell, home directory, and groups.

Syntax:

sudo usermod [options] username

My Notes:

- `usermod` works only with existing users.
- It is used to update user account settings.

---

## usermod --shell

Meaning: Changes the default login shell of an existing user.

Purpose: Sets a different shell for the user.

Syntax: sudo usermod --shell /bin/bash loki

Example: sudo usermod --shell /bin/bash loki

Alternative:

sudo usermod -s /bin/bash loki

Output:

The user's default login shell becomes `/bin/bash`.

Verify:

cat /etc/passwd

Example Output:

loki:x:1003:1003::/home/loki:/bin/bash

My Notes:

- `--shell` or `-s` changes the login shell.
- `/bin/bash` makes Bash the default shell.

---

## usermod -l

Meaning: Changes the username of an existing user.

Purpose: Renames a Linux user account.

Syntax:

sudo usermod -l new_username old_username

Example:

sudo usermod -l odinson loki

Output:

The username changes from `loki` to `odinson`.

Verify:

cat /etc/passwd

Example Output:

odinson:x:1003:1003::/home/loki:/bin/bash

My Notes:

- `-l` means Login Name.
- Only the username changes.
- The home directory is not renamed automatically.

---

## useradd -m

Meaning: Creates a new user and automatically creates a home directory.

Purpose: Creates a complete user account with a home directory.

Syntax:

sudo useradd -m username

Example:

sudo useradd -m hulk

Output:

Creates:

/home/hulk

My Notes:

- `-m` automatically creates the user's home directory.
- Without `-m`, the home directory is not created automatically.

---

## su

Meaning: Switch User.

Purpose: Changes from the current user to another user.

Syntax:

su - username

Example:

su - ironman

Output:

Password:

After successful login:

ironman@Harsh-PC:~$

My Notes:

- `su` requires the target user's password.
- `-` loads the complete login environment of that user.

---

## sudo

Meaning: Superuser Do.

Purpose: Runs commands with administrator (root) privileges.

Syntax:

sudo command

Example:

sudo useradd jarvis

My Notes:

- `sudo` allows a permitted user to execute administrative commands.
- It usually asks for your own password, not the root password.

---

## sudo su - username

Meaning: switches to another user using sudo privileges.

Purpose: Logs in as another user without requiring that user's password (if you have sudo permission).

Syntax:

sudo su - username

Example:

sudo su - ironman

Output:

ironman@Harsh-PC:~$

My Notes:

- Requires sudo privileges.
- Uses your administrator permissions.
- Useful for system administration.

---

## visudo

Meaning: Safely edits the `/etc/sudoers` file.

Purpose: Used to manage sudo permissions safely.

Syntax:

sudo visudo

Output:

Opens the sudoers file in the default editor.

My Notes:

- Always use `visudo` instead of editing `/etc/sudoers` directly.
- It checks for syntax errors before saving.
- Prevents accidental corruption of the sudoers file.


## groupadd

Meaning: Creates a new Linux group.

Purpose: Used to create a group so that multiple users can be managed together.

Syntax:

sudo groupadd group_name

Example:

sudo groupadd avengers

Output:

A new group named `avengers` is created.

My Notes:

- Every group has a unique Group ID (GID).
- Groups are used to manage permissions for multiple users.


## cat /etc/group

Meaning: Displays the contents of the `/etc/group` file.

Purpose: Shows all groups available on the Linux system.

Syntax:

cat /etc/group

Example:

cat /etc/group

Example Output:

avengers:x:1006:ironman

Field Explanation:

- `avengers` → Group Name
- `x` → Password Placeholder
- `1006` → Group ID (GID)
- `ironman` → Group Members

My Notes:

- This file stores information about all groups.
- It is used to verify whether a group exists and who belongs to it.

---

## groups

Meaning: Displays the groups of the current user.

Purpose: Shows which groups the currently logged-in user belongs to.

Syntax:

groups

Example:

groups

Example Output:

harshkumar adm sudo dip plugdev users

My Notes:

- Useful for checking group membership.
- If a user belongs to the `sudo` group, they can use sudo commands.


## Giving Sudo Permission to a Group

Meaning: Allows every member of a group to use sudo.

Purpose: Provides administrative privileges to all users in that group.

Command:

sudo visudo

Add the following line below the sudo group entry:

%avengers ALL=(ALL:ALL) NOPASSWD: ALL

Explanation:

- `%` → Indicates a group.
- `ALL` → All systems.
- `(ALL:ALL)` → All users and groups.
- `NOPASSWD:` → No password required.
- `ALL` → All commands.

My Notes:

- Always edit the sudoers file using `visudo`.
- Never edit `/etc/sudoers` directly.

---

## usermod -aG

Meaning: Adds an existing user to a secondary group.

Purpose: Used to give a user additional group membership.

Syntax:

sudo usermod -aG group_name username

Example:

sudo usermod -aG avengers ironman

Output:

The user `ironman` becomes a member of the `avengers` group.

Verify:

cat /etc/group

Example Output:

avengers:x:1006:ironman

My Notes:

- `-a` = Append.
- `-G` = Secondary Group.
- Existing group memberships remain unchanged.

---

## Difference Between -G and -aG

-G

Removes the user from existing secondary groups and keeps only the specified group.

Example:

sudo usermod -G avengers ironman

-aG

Appends the new group while keeping all existing groups.

Example:

sudo usermod -aG avengers ironman

My Notes:

- `-aG` is the recommended option.
- Using only `-G` may remove the user from other important groups.

---

## gpasswd -d

Meaning: Removes a user from a group.

Purpose: Deletes the user's membership from a specific group.

Syntax:

sudo gpasswd -d username group_name

Example:

sudo gpasswd -d thanos avengers

Output:

Removing user thanos from group avengers

My Notes:

- `gpasswd` is a group administration command.
- `-d` removes the user from the specified group.
- The user account is not deleted.

---

## userdel

Meaning: Deletes an existing user account.

Purpose: Removes a user from the Linux system.

Syntax:

sudo userdel username

Example:

sudo userdel thanos

Output:

The user account is deleted.

My Notes:

- Only the user account is removed.
- The home directory is not removed unless additional options are used.

---

## groupdel

Meaning: Deletes an existing Linux group.

Purpose: Removes a group from the system.

Syntax:

sudo groupdel group_name

Example:

sudo groupdel avengers

Output:

The group `avengers` is deleted.

My Notes:

- Only the group is deleted.
- Group members (users) are not deleted.
- Users simply lose the permissions associated with that group.

---

## Day 4 Summary

Commands Learned:

- adduser
- useradd
- useradd -m
- usermod
- usermod -l
- usermod --shell
- passwd
- su
- sudo
- sudo su
- visudo
- groupadd
- groups
- gpasswd
- userdel
- groupdel
- cat /etc/passwd
- cat /etc/shadow
- cat /etc/group
- ls -al


## Key Learnings

- Linux users and groups are managed separately.
- New users do not receive sudo privileges automatically.
- Passwords are securely stored in `/etc/shadow`.
- Always use `visudo` to edit the sudoers file.
- `-aG` appends a user to a group, while `-G` replaces existing secondary groups.
- Groups make permission management easier.
