# Python - Day 1: Introduction to Programming 

## Introduction to Programming

### 1. What is Programming?

**Meaning:**

Programming means giving instructions to a computer to perform a particular task.

In other words, programming is a way for us to tell computers what to do.

A computer is a dumb machine. It only does what we tell it to do.

**Example:**

Suppose we want to calculate 253 × 26318.

- Manually calculating it takes time.
- With programming, we can instruct the computer to perform the calculation and other tasks.

### 2. Simple Python Program

**Example:**
```
  print(5 + 9)
```

**Output:**
```
    14
```
Here, we give an expression to Python, which calculates it and displays the result through the `print()` function.

### 3. What is Python?

**Meaning:**

Python is a high-level, general-purpose programming language.

Python is a dynamically typed, general-purpose programming language that supports both object-oriented programming and functional programming approaches.

### 4. Important Features of Python

1. **Simple and Easy to Understand**

   Python is simple and easy to understand.

2. **Interpreted and Platform Independent**

   Python is an interpreted and platform-independent language, which makes debugging very easy.

3. **Open Source**

   Python is free to use.

4. **Large Library Ecosystem**

   Python has a large library ecosystem.

**Platform Independent Meaning:**

The same Python code can run on different operating systems, such as Windows, Linux and macOS.

### 5. Where is Python Used?

1. **Automation** → Used to automate repetitive tasks.
2. **Cloud** → Used with AWS services and cloud-related tasks.
3. **System Administration** → Used to manage files, processes and system information.
4. **Data Analysis** → Used to process and analyse data.
5. **Web Development** → Used to build backend applications.
6. **AI and Machine Learning** → Used to train and use machine learning models.
7. **Business / Accounting** → Used for complex mathematical calculations.

## Applications of Python and REPL

### 1. Some Amazing Python Programs

Applications of Python:

1. **Jarvis:** Voice assistant and automation.
2. **Loan Calculator:** GUI-based calculator.
3. **Face Detection:** Computer vision.
4. **Flappy Bird Game:** Built using Pygame.
5. **Snake Game:** Built using Pygame.

### 2. What is REPL?

**Full Form:** Read - Evaluate - Print - Loop

REPL is a Python interactive interpreter where we can execute Python instructions one by one.

- **Read:** Takes input from the user.
- **Evaluate:** Processes the input.
- **Print:** Displays the result.
- **Loop:** Again accepts input and repeats the process.

**Example 1:**
```
    >>> 8 + 9
```
**Output:**
```
    17
```
**Example 2:**
```
    >>> print("Harsh")
```
**Output:**
```
    Harsh
```
Python's interactive interpreter provides a prompt where we can directly execute instructions and see the output on the screen.

##  Modules and PIP

### 1. What is a Module?

**Meaning:**

A module is a Python file that contains reusable code.

We can use modules to reuse code written in different Python files.

Modules can contain:

- Classes
- Variables
- Functions

**Purpose:**

Modules help us organize code and reuse existing code instead of writing everything again.

**Example:**

Module A → calculator.py

It contains code for adding two numbers.

We can import this module into another Python file and use its code.

### 2. How to Use a Module?

We use the `import` keyword to import a module into our Python program.

**Example:**
```
    import math

    print(math.sqrt(25))
```
**Output:**
```
    5.0
```
### 3. Types of Modules

There are two types of modules:

#### 1. Built-in / Standard Library Modules

Python provides these modules by default, so we do not need to install them separately.

**Examples:**

- math
- random
- datetime
- hashlib

#### 2. External Packages / Modules

These packages are not available by default. We need to install them using PIP.

**Examples:**

- pandas
- scikit-learn
- requests

### 4. What is PIP?

**Meaning:**

PIP is the Python package installer.

It is used to install external packages in Python.

**Example:**
```
    pip3 install pandas
```
This command installs the pandas package.

After installation, we can import the package into our program.

**Example:**
```
     import pandas
```
### 5. Python Package Installation

We can install external packages using PIP.

**Example:**
```
    python3 -m pip install requests
```
This command installs the requests package using Python's PIP module.

**Note:**

We need to install a package before importing it if it is not already available in our Python environment.

### 6. What is a Python Script?

**Meaning:**

A Python script is a file containing Python instructions.

In REPL, we execute commands one by one manually.

However, in a Python script, we can write multiple instructions together and execute them as a sequence.

##  Our First Python Program

### 1. What is the print() Function?

**Meaning:**

`print()` is a built-in Python function.

It is used to display output on the screen or terminal.

**Example:**
```
    print("Hello World")
```
**Output:**
```
    Hello World
```
Here, Python displays the text on the screen using the `print()` function.

### 2. Double Quotes (" ") and Single Quotes (' ')

Python allows us to write strings using both double quotes and single quotes.

Both are valid ways to represent strings in Python.

**Example 1:**
```
    print("Hello")
```
**Example 2:**
```
    print('Hello')
```
**Output of Both:**
```
    Hello
```
### 3. Syntax Errors

**Meaning:**

A syntax error occurs when the structure or rules of Python code are not followed correctly.

Python displays a syntax error when it cannot understand the written code structure.

### 4. Name Errors

**Meaning:**

A name error occurs when Python cannot find a name that we are trying to use.

For example, using an undefined variable or function name can cause a NameError.

### 5. Difference Between Numbers and Text

In Python, numbers and text are different data types.

**Example 1: Integer**
```
    print(5)
```
**Output:**
```
    5
```
Here, 5 is an integer.

**Example 2: String**
```
    print("5")
```
**Output:**
```
    5
```
Here, "5" is a string (text).
`
Both display the same output, but their data types are different.

### 6. Printing Multiple Values

We can use the `print()` function to display multiple values together.

**Example:**
```
    print("Hello World", 7)
```
**Output:**
```
    Hello World 7
```
### 7. Mathematical Calculations Using print()

We can also perform mathematical calculations inside the `print()` function.

**Example:**
```
    print(17 * 13)
```
**Output:**
```
    221
```
Here, Python calculates 17 multiplied by 13 and displays the result.

## Key Learnings

1. Programming means giving instructions to a computer.
2. Python is a high-level, general-purpose programming language.
3. Python is simple, interpreted, platform-independent and open source.
4. Python is used in automation, cloud, system administration, data analysis, web development, AI and machine learning.
5. REPL stands for Read, Evaluate, Print and Loop.
6. Python has different applications, including voice assistants, calculators and games.
7. Modules help us reuse code in Python.
8. There are two types of modules: Built-in and External.
9. PIP is used to install external Python packages.
10. `import` is used to import modules.
11. A Python script contains Python instructions that can be executed together.
12. `print()` is a built-in function used to display output.
13. Python supports both single and double quotes for strings.
14. Numbers and text have different data types.
15. SyntaxError and NameError are two types of errors in Python.
