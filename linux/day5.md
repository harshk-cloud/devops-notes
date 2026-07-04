# Day 5 - Linux Package Management, Git, Pip and Snap

## Package

Meaning: A package is a software installation file along with the files and dependencies required to run that software.

Purpose: It is used to install, update, and manage software on Linux.

My Notes:
- Applications like Firefox, Discord, VS Code, and Minecraft are installed as packages.
- A package contains the application and its required files.
- Linux uses package managers to install and manage packages.


## Package Manager

Meaning: A package manager is a tool that installs, updates, removes, and manages software packages.

Purpose: It automates software management and handles dependencies.

My Notes:
- Different Linux distributions use different package managers.
- The most common package managers are:
  - dpkg
  - apt
  - Snap


## dpkg

Meaning: dpkg is the low-level package manager used in Debian-based Linux distributions.

Purpose: It installs or removes `.deb` package files manually.

My Notes:
- Works only with `.deb` package files.
- The package must be downloaded manually first.
- It does not install missing dependencies automatically.
- If dependencies are missing, the installation may fail.


## Package File Extensions

Meaning: Different operating systems use different package file formats.

Purpose: They identify the installation package for each operating system.

My Notes:
- `.deb` → Debian/Ubuntu Linux
- `.rpm` → Red Hat, Fedora, CentOS
- `.exe` → Windows
- `.dmg` → macOS


## APT (Advanced Package Tool)

Meaning: APT is a high-level package manager for Debian-based Linux systems.

Purpose: It installs, updates, removes, and manages software automatically.

My Notes:
- Automatically downloads packages.
- Installs required dependencies.
- Can repair broken packages.
- Much easier and smarter than dpkg.
- Uses online repositories.


## Repository

Meaning: A repository is an online server that stores Linux software packages.

Purpose: It provides packages that APT can download and install.

My Notes:
- Contains thousands of Linux packages.
- APT downloads software directly from repositories.
- No need to download `.deb` files manually in most cases.


## sudo apt update

Meaning: Downloads the latest package information from repositories.

Purpose: Refreshes the package list before installing or upgrading software.

My Notes:
- Does not install updates.
- Only updates the package database.
- Usually run before installing software.


## sudo apt install

Meaning: Installs a software package.

Purpose: Downloads and installs software with all required dependencies.

My Notes:
- Searches the repository.
- Downloads the package.
- Installs dependencies automatically.
- Configures the software for use.


## sudo apt --fix-broken install

Meaning: Repairs broken package installations.

Purpose: Installs missing dependencies and fixes package issues.

My Notes:
- Used when installation fails because of missing dependencies.
- Repairs broken packages automatically.


## apt list

Meaning: Displays packages available in the repository.

Purpose: Shows available software packages.

My Notes:
- Useful for checking available packages.


## apt list --installed

Meaning: Displays packages installed on the system.

Purpose: Shows currently installed software.

My Notes:
- Helpful for checking whether a package is already installed.


## Pipe ( | )

Meaning: A pipe sends the output of one command as the input to another command.

Purpose: Combines multiple commands together.

My Notes:
- Makes searching and filtering easier.
- Commonly used with grep.


## grep

Meaning: grep is a text searching tool.

Purpose: Searches for matching text inside command output or files.

My Notes:
- Used to find specific words.
- Makes searching faster and more precise.


## apt show

Meaning: Displays detailed information about a package.

Purpose: Shows package information before installation.

My Notes:
- Shows version.
- Shows description.
- Shows dependencies.
- Shows package size.


## apt search

Meaning: Searches for packages in the repository.

Purpose: Finds software packages by name.

My Notes:
- Searches the repository.
- Useful when you don't know the exact package name.


## sudo apt remove

Meaning: Removes an installed package.

Purpose: Uninstalls the application.

My Notes:
- Removes the application.
- Configuration files usually remain.


## sudo apt purge

Meaning: Completely removes an installed package.

Purpose: Deletes both the application and its configuration files.

My Notes:
- Removes configuration files as well.
- Used for a clean uninstall.


## sudo apt upgrade

Meaning: Updates installed packages to newer versions.

Purpose: Installs available package updates.

My Notes:
- Works after `apt update`.
- Updates only installed packages.
- Does not remove existing packages.


## sudo apt full-upgrade

Meaning: Performs a complete system upgrade.

Purpose: Updates packages even if some old packages must be removed.

My Notes:
- Can remove obsolete packages.
- Installs newer versions when required.
- Used for major upgrades.


## Aptitude

Meaning: Aptitude is another high-level package manager.

Purpose: Provides an interactive interface for package management.

My Notes:
- Similar to APT.
- Includes an interactive text interface.
- Less commonly used today.


## Snap

Meaning: Snap is a package management system developed by Canonical.

Purpose: Installs applications from the Snap Store.

My Notes:
- Similar to an app store.
- Developers publish applications directly.
- Often provides the latest software versions.
- Packages include their required dependencies.

---

## Snap Store

Meaning: The Snap Store is an online store for Snap packages.

Purpose: Provides applications for Snap installation.

My Notes:
- Similar to the Play Store.
- Snap downloads applications from the Snap Store instead of repositories.


## Programming Language Package Managers

Meaning: Many programming languages have their own package managers.

Purpose: They install libraries and dependencies required by programs.

My Notes:
- Python → pip / pip3
- Ruby → gem (RubyGems)
- Node.js → npm
- Java → Maven / Gradle


## pip / pip3

Meaning: pip is Python's package manager.

Purpose: Installs Python libraries and dependencies.

My Notes:
- `pip3` is used for Python 3.
- Installs libraries required by Python projects.
- Different from APT because it manages Python packages, not Linux software.


## requirements.txt

Meaning: A text file containing all Python dependencies required for a project.

Purpose: Allows all required libraries to be installed automatically.

My Notes:
- Lists all required Python packages.
- Similar to an ingredients list in a recipe.
- Helps run projects without manually installing every library.


## pip install -r requirements.txt

Meaning: Reads the requirements file and installs every listed dependency.

Purpose: Prepares a Python project to run correctly.

My Notes:
- `-r` means read from a file.
- Installs all required libraries automatically.
- Prevents missing library errors.


## ModuleNotFoundError

Meaning: An error that appears when a required Python module is missing.

Purpose: Indicates that a dependency has not been installed.

My Notes:
- Usually fixed by installing the required package.
- Running `pip install -r requirements.txt` often resolves the issue.


## Git

Meaning: Git is a version control system.

Purpose: Downloads projects from GitHub and tracks changes in code.

My Notes:
- Widely used by developers.
- Makes it easy to download open-source projects.
- Keeps project history.


## GitHub Repository

Meaning: A repository is a project stored on GitHub.

Purpose: Stores source code and project files.

My Notes:
- Contains project files.
- Can be cloned to a local computer.
- Often includes a README and requirements file.


## git clone

Meaning: Creates a copy of a GitHub repository on the local computer.

Purpose: Downloads an entire project.

My Notes:
- Creates a local copy of the repository.
- Downloads all project files and folders.
- Clone means making a copy.


## Python Script Execution

Meaning: Python executes a script using the Python interpreter.

Purpose: Runs Python programs.

My Notes:
- The Python interpreter reads and executes the script.
- Command-line arguments can be passed to the script.
- Example project workflow:
  - Clone the repository.
  - Open the project directory.
  - Install dependencies from `requirements.txt`.
  - Run the Python script.



## Key Learnings

- A package manager installs, updates, and removes software in Linux.
- `dpkg` is a low-level package manager and does not automatically install dependencies.
- `apt` is a high-level package manager that downloads packages and resolves dependencies automatically.
- Always run `apt update` before installing new packages.
- `apt update` refreshes the package list, while `apt upgrade` updates installed packages.
- `apt full-upgrade` can remove old packages if required to complete an upgrade.
- `snap` installs applications from the Snap Store and often provides newer versions.
- `apt` installs operating system software, while `pip` installs Python libraries.
- `requirements.txt` stores all Python project dependencies for easy installation.
- `git clone` downloads a complete copy of a GitHub repository.
- Python scripts are executed using the `python3` interpreter.
