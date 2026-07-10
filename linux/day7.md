# Day 7 - Linux Process Management

## Program

Meaning: A program is a file stored on the disk.

Purpose: It contains instructions that are executed by the operating system.

Example: Firefox, VS Code, Nano

My Notes:
- A program is not running.
- It becomes a process when executed.
- Stored on HDD or SSD.


## Process

Meaning: A process is a running instance of a program.

Purpose: Represents a program currently executing in memory.

Example: Running Firefox, Running Nano

My Notes:
- Every process has a unique Process ID (PID).
- Linux manages processes using PID.
- One program can create multiple processes.

## Process ID (PID)

Meaning: PID is a unique number assigned to every running process.

Purpose: Used to identify and manage processes.

Example: 2376

My Notes:
- Every running process has a different PID.
- Commands like kill use PID instead of the process name.

## ps

Meaning: Displays processes running in the current terminal.

Purpose: View information about active processes.

Example: ps

My Notes:
- Shows PID, TTY, TIME and CMD.
- Displays only processes running in the current shell.

## ps -u

Meaning: Displays all processes owned by a specific user.

Purpose: View processes running under a particular user account.

Example: ps -u harshkumar

My Notes:
- -u stands for User.
- Shows all processes belonging to that user.

## grep

Meaning: Searches for matching text from command output.

Purpose: Filters only the required information.

Example: ps -u harshkumar | grep firefox

My Notes:
- Used with the pipe (|) operator.
- Displays only matching lines.

## pgrep

Meaning: Finds a process using its name.

Purpose: Quickly get the Process ID (PID).

Example: pgrep firefox

My Notes:
- Returns only the PID.
- Faster than using ps with grep.

## kill

Meaning: Sends a signal to a process.

Purpose: Stop, interrupt or terminate a process.

Example: kill 2376

My Notes:
- Requires a valid PID.
- Default signal is SIGTERM (15).
- Used to manage running processes.

## ps --help

Meaning: Displays help information for the ps command.

Purpose: Learn available options and usage.

Example: ps --help simple

My Notes:
- "simple" shows basic help.
- Useful for learning command options.

## ps -A

Meaning: Displays all processes in the system.

Purpose: View every running process.

Example: ps -A

My Notes:
- Shows processes of all users.
- Similar to ps -e.

## ps -e

Meaning: Displays all running processes.

Purpose: View every active process.

Example: ps -e

My Notes:
- Nearly identical to ps -A.
- Includes both system and user processes.

## ps -a

Meaning: Displays processes associated with terminals.

Purpose: View terminal-based processes.

Example: ps -a

My Notes:
- Shows processes connected to a TTY.
- Does not include every background service.

## ps aux

Meaning: Displays detailed information about all running processes.

Purpose: Monitor the complete process list.

Example: ps aux

My Notes:
- Shows USER, PID, CPU, Memory and COMMAND.
- Includes background processes.
- One of the most commonly used Linux commands.


## top

Meaning: Displays running processes in real time.

Purpose: Monitor CPU, memory usage and active processes.

Example: top

My Notes:
- Updates automatically.
- Shows CPU and RAM usage.
- Press q to exit.


## htop

Meaning: An interactive and improved version of the top command.

Purpose: Monitor processes with a user-friendly interface.

Example: htop

My Notes:
- Easy to read.
- Supports keyboard navigation.
- Press q to exit.


## Foreground Process

Meaning: A process that runs directly in the terminal.

Purpose: Executes tasks while keeping the terminal busy.

Example: ping google.com

My Notes:
- Occupies the terminal.
- You cannot run another command until it finishes.
- Can be interrupted using Ctrl + C.


## Background Process

Meaning: A process that runs without occupying the terminal.

Purpose: Allows other commands to run while the process continues.

Example: sleep 300 &

My Notes:
- Terminal remains available.
- Process continues running in the background.
- Can be brought back using fg.


## Ctrl + C

Meaning: Sends an interrupt signal (SIGINT) to the foreground process.

Purpose: Stops the currently running process.

Example: Ctrl + C

My Notes:
- Sends Signal 2 (SIGINT).
- Used to interrupt foreground processes.
- Common shortcut to stop commands.


## Ctrl + Z

Meaning: Suspends the current foreground process.

Purpose: Temporarily pauses a process.

Example: Ctrl + Z

My Notes:
- Suspends the process instead of terminating it.
- Process can be resumed using bg or fg.


## jobs

Meaning: Displays jobs running in the current shell.

Purpose: Check background and suspended jobs.

Example: jobs

My Notes:
- Displays Job Number.
- Job Number is different from PID.
- Shows Running or Stopped status.


## bg

Meaning: Resumes a stopped job in the background.

Purpose: Continue a suspended process without occupying the terminal.

Example: bg 1

My Notes:
- Resumes the specified job.
- Terminal becomes available for other commands.


## fg

Meaning: Brings a background job to the foreground.

Purpose: Continue interacting with a background process.

Example: fg 1

My Notes:
- Returns the selected job to the terminal.
- Ctrl + C can be used again after bringing it to the foreground.


## & (Ampersand)

Meaning: Starts a process directly in the background.

Purpose: Run a command without blocking the terminal.

Example: ping google.com &

My Notes:
- No need to press Ctrl + Z.
- Process starts in the background immediately.
- Terminal remains free for other commands.


## Process States

Meaning: Shows the current status of a running process.

Purpose: Helps understand what a process is doing.

Example: ps -ax

My Notes:
- Process states appear in the STAT column.
- They show whether a process is running, sleeping or stopped.


## Running (R)

Meaning: The process is currently executing.

Purpose: Indicates the process is actively using CPU.

Example: R

My Notes:
- Process is performing its task.
- CPU is executing its instructions.


## Sleeping (S)

Meaning: The process is waiting for an event.

Purpose: Saves CPU resources until work is available.

Example: S

My Notes:
- Most Linux processes remain in this state.
- It is a normal process state.


## Stopped (T)

Meaning: The process is paused.

Purpose: Temporarily stops execution without terminating the process.

Example: T

My Notes:
- Usually created using Ctrl + Z.
- Can be resumed using bg or fg.


## Zombie (Z)

Meaning: A terminated process whose entry still exists in the process table.

Purpose: Waits for the parent process to collect its exit status.

Example: Z

My Notes:
- Zombie processes do not consume CPU.
- They only occupy a process table entry.


## kill -l

Meaning: Displays all available Linux signals.

Purpose: View the list of signals that can be sent to a process.

Example: kill -l

My Notes:
- Lists signal numbers and names.
- Useful when working with the kill command.


## SIGTERM (15)

Meaning: Gracefully requests a process to terminate.

Purpose: Safely stop a running process.

Example: kill PID

My Notes:
- Default signal used by the kill command.
- Allows the process to clean up before exiting.


## SIGKILL (9)

Meaning: Forcefully terminates a process.

Purpose: Immediately stop an unresponsive process.

Example: kill -9 PID

My Notes:
- Cannot be ignored or handled.
- Immediately removes the process.


## SIGINT (2)

Meaning: Interrupt signal.

Purpose: Stops the current foreground process.

Example: Ctrl + C

My Notes:
- Same signal sent by Ctrl + C.
- Interrupts the running process.


## SIGSTOP (19)

Meaning: Stops a running process.

Purpose: Pause a process without terminating it.

Example: kill -19 PID

My Notes:
- Process remains in memory.
- Can be resumed later.


## SIGCONT (18)

Meaning: Continues a stopped process.

Purpose: Resume execution of a paused process.

Example: kill -18 PID

My Notes:
- Continues a stopped process.
- Used internally by bg and fg.


## pkill

Meaning: Kills processes using their process name.

Purpose: Terminate one or more processes without using PID.

Example: pkill -9 ping

My Notes:
- Uses the process name instead of PID.
- Can terminate multiple matching processes.
- Useful when several processes have the same name.

## Key Learnings

- A program becomes a process when it starts running.
- Every process has a unique PID.
- ps, top and htop are used to monitor processes.
- jobs displays shell jobs, not PIDs.
- bg resumes a stopped job in the background.
- fg brings a background job back to the foreground.
- Ctrl + C interrupts a foreground process.
- Ctrl + Z pauses a foreground process.
- kill sends signals using PID.
- pkill sends signals using the process name.
- SIGTERM gracefully stops a process.
- SIGKILL forcefully terminates a process.
- Linux uses signals to control process behavior.
