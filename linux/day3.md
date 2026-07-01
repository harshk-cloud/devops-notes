# Day 3 - Terminal, Shell and Basic Linux Commands

## Terminal

Meaning:
A terminal is an interface used to interact with a computer.

Purpose:
It takes input from the keyboard and displays output on the screen.

My Notes:
- In the past, a terminal was a physical keyboard and monitor.
- Today we use a Terminal Emulator such as Ubuntu Terminal, Windows Terminal, or PowerShell.
- The terminal only provides an interface. It does not execute commands.


## Shell

Meaning:
A shell is a command-line interface that allows users to interact with the Linux operating system.

Purpose:
It reads user commands and sends them to the Linux kernel for execution.

My Notes:
- The shell executes commands.
- The terminal only displays input and output.
- Bash is the default shell on Ubuntu.


## Bash

Full Form:
Bourne Again SHell

My Notes:
- Bash is a type of shell.
- Other shells include Zsh and Fish.


## ps

Meaning: Process Status

Purpose: Displays the currently running processes.

Example: ps

My Notes:
I used this command to check the current shell process.


## su

Meaning: Switch User

Purpose: Switches from one user account to another.

Example: su root

My Notes:
Ubuntu usually disables direct root login, so this may show "Authentication failure."


## sudo su

Meaning:
Run commands with administrator privileges and switch to the root user.

Example: sudo su

My Notes: After entering my password, I became the root user.


## exit

Purpose:
Exits the current shell or returns from the root user to the normal user.

Example: exit


## id

Purpose: Displays information about the current user.

Example: id

## hostname

Purpose: Displays the system hostname.

Example: hostname


## ip

Purpose: Displays network interface information.

Example: ip 


## netstat

Purpose: Displays network connections and statistics.

Example: netstat


## lsblk

Meaning: List Block Devices

Purpose: Displays storage devices such as hard disks and partitions.

Example: lsblk


## lsusb

Meaning: List USB Devices

Purpose: Displays connected USB devices.

Example: lsusb


## man

Meaning: Manual

Purpose: Shows the complete manual page of a command.

Example: man uname

My Notes:
I can also use:
- man pwd
- man ls
- man su


## --help

Purpose: Displays a short help message for a command.

Example: pwd --help

My Notes: It provides quick information but is shorter than the man command.


## apropos

Purpose: Searches for commands related to a keyword.

Example: apropos usb

My Notes: Useful when I do not remember the exact command name.


# Summary

- Terminal is an interface.
- Shell executes commands.
- Bash is the default shell in Ubuntu.
- `$` indicates a normal user.
- `#` indicates the root user.
- `man` provides detailed documentation.
- `--help` provides quick command help.
- `apropos` helps find commands by keyword.
