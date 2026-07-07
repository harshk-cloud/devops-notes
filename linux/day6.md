# Day 6 - Linux Daemons and systemd

## Process

Meaning: A process is an instance of a running program.

Purpose: It represents a program that is currently executing on the system.

Example:
Firefox, Nano, VS Code

My Notes:
- Every running application becomes a process.
- Each process has a unique Process ID (PID).
- Multiple processes can run at the same time.


## Daemon

Meaning: A daemon is a background process that provides services to the operating system or other programs.

Purpose: It performs system tasks automatically without user interaction.

Example:
sshd, cron, NetworkManager, cups

My Notes:
- Daemons usually start automatically during system boot.
- They keep running in the background.
- Most system services are provided by daemons.
- Many daemon names traditionally end with the letter "d", but not all do.


## Interactive Process

Meaning: A process started directly by the user.

Purpose: It performs tasks while the user is interacting with it.

Example:
Nano, Vim, Firefox, VS Code

My Notes:
- Starts when the user launches a program.
- Usually runs in the foreground.
- Stops when the application is closed.


## ps

Meaning: Process Status.

Purpose: Displays information about running processes.

Example:
ps

My Notes:
- Shows the processes running in the current terminal session.
- Useful for checking active processes.


## ps aux

Meaning: Displays detailed information about all running processes.

Purpose: Used to monitor every running process on the system.

Example:
ps aux

My Notes:
- Shows processes from all users.
- Displays PID, CPU usage, memory usage, owner and command.
- Commonly used for troubleshooting.


## grep

Meaning: Global Regular Expression Print.

Purpose: Searches and filters text that matches a specific pattern.

Example:
ps aux | grep ssh

My Notes:
- Commonly used with other commands.
- Helps find a specific process from a large output.
- Makes searching much easier.


## systemd

Meaning: systemd is the initialization system and service manager used by most modern Linux distributions.

Purpose: It starts the operating system and manages background services.

My Notes:
- systemd starts after the Linux kernel finishes loading.
- It always runs as PID 1.
- It starts, stops, restarts and monitors services.
- It manages most system daemons.


## Linux Boot Sequence

Meaning: The order in which Linux starts after the computer is powered on.

Purpose: Explains how the operating system becomes ready to use.

My Notes:
- Computer Power On
- BIOS / UEFI
- Bootloader
- Linux Kernel
- systemd (PID 1)
- System Services
- Login Screen
- Desktop


## Initialization System (Init)

Meaning: The software responsible for preparing Linux after the kernel loads.

Purpose: Makes the operating system ready for users.

My Notes:
- Mounts file systems.
- Starts networking.
- Starts background services.
- Launches the login screen or desktop.
- Modern Linux distributions use systemd as the init system.

## systemctl

Meaning: systemctl is the command-line tool used to communicate with systemd.

Purpose: It is used to manage services and other systemd units.

My Notes:
- Used to start, stop, restart and monitor services.
- Works with the systemd init system.
- One of the most important Linux administration commands.


## Units

Meaning: A unit is any resource managed by systemd.

Purpose: It allows systemd to manage different types of system resources.

My Notes:
- A service is one type of unit.
- Other unit types include socket, mount, device, target and timer.
- Every service is a unit, but not every unit is a service.

## systemctl

Meaning: systemctl is the command-line utility used to communicate with systemd and manage system services (units).

Purpose: It allows you to start, stop, restart, enable, disable, monitor, and troubleshoot services managed by systemd.

My Notes:
- systemctl is the primary tool for managing Linux services.
- It communicates directly with systemd.
- Most service management tasks are performed using systemctl.
- Service management usually requires root privileges, so commands are commonly run with sudo.


## sudo systemctl start

Meaning: Starts a stopped service.

Purpose: Used to start a service immediately.

Example:
sudo systemctl start ssh

My Notes:
- Starts the service now.
- Does not enable automatic startup after reboot.
- If the service fails, check its status and logs.


## sudo systemctl stop

Meaning: Stops a running service.

Purpose: Used to stop a service immediately.

Example:
sudo systemctl stop ssh

My Notes:
- Stops the service.
- The service can be started again later.
- Useful before maintenance or configuration changes.


## sudo systemctl restart

Meaning: Stops and starts a service again.

Purpose: Used after changing configuration or to recover from problems.

Example:
sudo systemctl restart ssh

My Notes:
- Completely restarts the service.
- Existing connections may be interrupted.
- Commonly used after editing configuration files.


## sudo systemctl reload-or-restart

Meaning: Reloads the service if supported; otherwise performs a restart.

Purpose: Applies configuration changes safely.

Example:
sudo systemctl reload-or-restart ssh

My Notes:
- Reload keeps the service running while applying changes.
- If reload is not supported, systemd performs a restart automatically.


## sudo systemctl enable

Meaning: Enables a service during system boot.

Purpose: Makes the service start automatically whenever Linux boots.

Example:
sudo systemctl enable nginx

My Notes:
- Does not start the service immediately.
- Only affects future boots.
- Creates the required startup links.


## sudo systemctl disable

Meaning: Disables automatic startup of a service.

Purpose: Prevents the service from starting automatically during boot.

Example:
sudo systemctl disable ntp

My Notes:
- Does not stop a currently running service.
- Only changes startup behavior for the next boot.


## sudo systemctl status

Meaning: Displays detailed information about a service.

Purpose: Checks whether a service is running correctly.

Example:
sudo systemctl status nginx

My Notes:
- Shows Active state.
- Shows Loaded state.
- Displays recent log messages.
- First command to use while troubleshooting.


## sudo systemctl is-active

Meaning: Checks whether a service is currently running.

Purpose: Quickly verifies the current state of a service.

Example:
sudo systemctl is-active ssh

Output:
- active
- inactive
- failed


## sudo systemctl is-enabled

Meaning: Checks whether a service starts automatically during boot.

Purpose: Verifies the boot startup configuration.

Example:
sudo systemctl is-enabled nginx

Output:
- enabled
- disabled
- static
- masked

My Notes:
- It checks startup configuration only.
- It does not indicate whether the service is currently running.


## sudo systemctl list-units

Meaning: Lists currently loaded systemd units.

Purpose: Displays active units managed by systemd.

Example:
sudo systemctl list-units

My Notes:
- Mostly shows loaded and active units.
- Includes services, sockets, mounts, timers and other unit types.


## sudo systemctl list-units -t service

Meaning: Lists only service units.

Purpose: Displays active services without showing other unit types.

Example:
sudo systemctl list-units -t service

My Notes:
- Makes the output easier to read.
- Useful when working only with services.


## sudo systemctl list-unit-files

Meaning: Lists all installed unit files.

Purpose: Shows every installed service, whether active or not.

Example:
sudo systemctl list-unit-files

My Notes:
- Includes enabled and disabled services.
- Also shows services that are not currently loaded.


## Searching for a Service

Purpose: Quickly find a specific installed service.

Example:
systemctl list-unit-files | grep nginx

My Notes:
- Filters the output.
- Helps locate a particular service quickly.


## journalctl

Meaning: journalctl is the command-line utility used to view logs collected by systemd.

Purpose: It helps administrators read system logs and troubleshoot service failures.

Example:
sudo journalctl -xe

My Notes:
- Displays system logs managed by systemd.
- Very useful when a service fails to start.
- The `-x` option adds helpful explanations to log messages.
- The `-e` option jumps to the most recent log entries.


## systemd-journald

Meaning: systemd-journald is the daemon responsible for collecting and storing system logs.

Purpose: It records logs from the kernel, services, and applications.

Example:
sudo systemctl restart systemd-journald

My Notes:
- Runs in the background as a daemon.
- Stores logs used by journalctl.
- If journalctl shows no logs unexpectedly, restarting this service may help.


## Restarting the Journal Service

Purpose: Restart the logging service if journalctl is not working correctly.

Example:
sudo systemctl restart systemd-journald

My Notes:
- Restarts the journaling daemon.
- Does not restart the entire system.
- Useful when logs are missing or journalctl is not displaying entries.


## Troubleshooting Failed Services

Meaning: Finding the reason why a service could not start.

Purpose: Helps identify and fix service-related problems.

My Notes:
- First check the service status.
- Then read the detailed logs.
- Fix the actual problem instead of repeatedly restarting the service.


## Common Error

Error: bind() to 0.0.0.0:80 failed (98: Address already in use)

Meaning: Another process is already using Port 80.

My Notes:
- Only one service can use the same IP address and port combination at a time.
- Since Port 80 was already occupied, Nginx could not start.
- The actual fix is to identify the process using Port 80 and free the port or configure Nginx to use another port.


## Exit Status

Meaning: status=1/FAILURE indicates that the service exited because of an error.

Purpose: Shows that the requested operation was unsuccessful.

My Notes:
- The service started but encountered an error.
- Read the logs to determine the exact cause.
- Never assume the reason without checking the logs.


## Standard Linux Troubleshooting Flow

Purpose: A common workflow used by Linux administrators when a service fails.

Step 1:
Start the service.

Example:
sudo systemctl start <service-name>

↓

Step 2:
Check the service status.

Example:
sudo systemctl status <service-name>

↓

Step 3:
Read the detailed logs.

Example:
sudo journalctl -xe

↓

Step 4:
Identify the root cause.

↓

Step 5:
Fix the problem and start the service again.

My Notes:
- This is one of the most common troubleshooting workflows in Linux.
- Always check logs before trying random fixes.
- Logs usually provide the exact reason for the failure.


## Key Learnings

- A process is a running instance of a program.
- A daemon is a background process that provides system services.
- systemd is the init system and service manager used by most modern Linux distributions.
- systemctl is used to manage services.
- Most service management commands require sudo.
- journalctl is used to view system logs.
- systemd-journald stores logs for systemd.
- If a service fails, always check its status and logs before attempting a fix.
- "Address already in use" means another process is already using the required port.
- Linux troubleshooting should follow a logical workflow instead of guessing the cause.
