# Day 2 - Linux File System


## whoami

Meaning: Who Am I

Purpose: Shows the current logged-in user.

Example: whoami

Output: harshkumar

My Notes:
I used this command to check the current user identity.


## clear ( CTRL + L )

Meaning: Clear Terminal Screen

Purpose: Clears all previous output from the terminal screen.

Example: clear

Output: Terminal screen cleared.

My Notes:
I used this command to keep the terminal clean and readable.


## cat

Meaning: Concatenate

Purpose: Displays the content of a file on the terminal.

Example:
cat file.txt

Output:
Contents of file.txt displayed on the screen.

My Notes:
I used this command to read file contents directly from the terminal.

## sudo

Meaning: Super User Do

Purpose: Runs a command with administrator (root) privileges.

Example:
sudo apt update

Output:
Command executed with root permissions.

My Notes:
I used this command when a task required special permissions.

## cp

Meaning: Copy

Purpose: Copies files or directories from one location to another.

Example:
cp file1.txt file2.txt

Output:
file1.txt copied successfully.

My Notes:
I used this command to create duplicate copies of files.

## rm

Meaning: Remove

Purpose: Deletes files permanently.

Example:
rm file.txt

Output:
file.txt deleted

My Notes:
I used this command to remove unwanted files.

## which

Meaning: Locate Command

Purpose: Displays the location of a command binary.

Example:
which ls

Output:
/usr/bin/ls

My Notes:
I used this command to find where a command is stored in Linux.


## sudo su

Meaning: Switch to Root User

Purpose: Changes the current session to the root user.

Example:
sudo su

Output:
root@Harsh-PC:~#

My Notes:
I used this command to become the root user.

# Important Directories

## /

Meaning: Root Directory

Purpose:
Top-level directory of Linux.

My Notes:
Everything in Linux starts from this directory.


## /home

Meaning: Home Directory

Purpose:
Stores personal files and folders of users.

Example:
/home/harshkumar

My Notes:
My personal files are stored here.


## /root

Meaning: Root User Home Directory

Purpose:
Stores files belonging to the root user.

My Notes:
This is different from the root directory (/).

## /etc

Meaning: Et Cetera

Purpose:
Stores configuration files and system settings.

Examples:
/etc/passwd
/etc/hostname
/etc/hosts

My Notes:
Linux configuration files are stored here.

## /var

Meaning: Variable Data

Purpose:
Stores logs and frequently changing files.

Examples:
System logs
Application logs

My Notes:
Useful for troubleshooting issues.


## /tmp

Meaning: Temporary Directory

Purpose:
Stores temporary files.

My Notes:
Files may be deleted automatically.

## /bin

Meaning: Binary

Purpose:
Stores essential command binaries.

Examples:
ls
cp
mv
cat

My Notes:
Basic Linux commands are stored here.

## /sbin

Meaning: System Binary

Purpose:
Stores administrative commands.

Examples:
adduser
shutdown

My Notes:
Mostly used by administrators.

## /dev

Meaning: Devices

Purpose:
Represents hardware devices as files.

Examples:
Hard Disk
USB Device
CD-ROM

My Notes:
Linux treats hardware devices as files.

## /media

Meaning: Media Directory

Purpose:
Stores automatically mounted devices.

My Notes:
USB drives are usually mounted here automatically.

## /mnt

Meaning: Mount Directory

Purpose:
Used for manually mounted devices.

My Notes:
Administrators use this directory for manual mounting.

# Important Concepts

## Everything in Linux is a File

Examples:

- Commands
- Devices
- Configuration Files
- Users
- Network Settings

My Notes:
Almost everything in Linux is represented as a file.

## Normal User vs Root User

Normal User Prompt:
$

Root User Prompt:
#

Example:
whoami

Output:
harshkumar

Output after sudo su:
root

My Notes:
The prompt symbol helps identify whether I am a normal user or root user.



