# Day 2: Comments, Escape Sequences, Print Statement, Variables and Data Types

## Comments, Escape Sequences and Print Statement

###  What are Comments?

**Meaning:**

Comments are lines in a program that are written for understanding the code. They are not executed by Python.

Comments help us understand what a particular part of the program does.

**Purpose:**

- Explain the code.
- Make the program easier to understand.
- Temporarily disable a line of code.
- Help identify and understand problems in a program.

###  Single-Line Comments

**Meaning:**

In Python, the `#` symbol is used to write a single-line comment.

**Example:**
```
    # This program displays a greeting
    print("Hello World")
```
**Output:**
```
    Hello World
```
**Explanation:**

The line starting with `#` is a comment. Python ignores it during execution, but it remains in the Python script.

###  Comments After Code

We can also write comments after a line of executable code.

**Example:**
```
    print("Hello World")  # Display a greeting
```
**Output:**
```
    Hello World
```
Here, Python executes the `print()` function and ignores the comment written after `#`.

###  Temporarily Disabling Code Using Comments

Comments can also be used to temporarily disable a line of code.

**Example:**
```
    print("First line")
    # print("Second line")
    print("Third line")
```
**Output:**
```
    First line
    Third line
```
The second line is not executed because it is commented out.

###  What are Escape Sequence Characters?

**Meaning:**

Escape sequences are special characters used inside strings to perform specific actions or display special characters.

A string is text written inside quotes.

###  New Line Escape Sequence (\n)

**Meaning:**

`\n` is used to move the output to a new line.

**Example:**
```
    print("Hello \n Harsh")
```
**Output:**
```
    Hello
    Harsh
```
Here, `\n` moves Harsh to the next line.

###  Double Quote Escape Sequence (\")

**Meaning:**

`\"` is used to display double quotes inside a string.

**Incorrect Example:**
```
    print("He said "Hello"")
```
This produces a syntax error because the quotation marks are not properly handled.

**Correct Example:**
```
    print("He said \"Hello\"")
```
**Output:**
```
    He said "Hello"
```
###  Single Quote Escape Sequence (\')

**Meaning:**

`\'` is used to display a single quote inside a string.

**Example:**
```
    print('It\'s Python')
```
**Output:**
```
    It's Python
```
### 9. print() Statement in Detail

The `print()` function is used to display output on the screen.

It has different parameters that help control how output is displayed.

### A. Printing Multiple Values

We can print text, numbers and multiple values using a single `print()` function.

**Example:**
```
    print("Hey", 6, 7)
```
**Output:**
```
    Hey 6 7
```
Python separates multiple values using spaces by default.

### B. sep - Separator

**Meaning:**

The `sep` parameter specifies what should appear between multiple values in a single `print()` statement.

By default, the separator is a space.

**Example 1:**
```
    print("Hey", 6, 7, sep="~")
```
**Output:**
```
    Hey~6~7
```
**Example 2:**
```
    print("Hey", 6, 7)
```
**Output:**
```
    Hey 6 7
```
**Example 3:**
```
    print("Hey", 6, 7, sep="-")
```
**Output:**
```
    Hey-6-7
```
### C. end - What Happens After print()?

**Meaning:**

By default, Python adds a new line after every `print()` statement.

The `end` parameter controls what happens at the end of the printed output.

**Example 1: Default Behaviour**
```
    print("Hello")
    print("Harsh")
```
**Output:**
```
    Hello
    Harsh
```
**Example 2: Using end=" "**
```
    print("Hello", end=" ")
    print("Harsh")
```
**Output:**
```
    Hello Harsh
```
**Example 3: Using sep and end Together**
```
    print("Hey", 6, 7, sep="~", end="009\n")
    print("Harsh")
```
**Output:**
```
    Hey~6~7009
    Harsh
```
### D. file Parameter

**Meaning:**

The `file` parameter specifies the destination where the output of the `print()` function should be written.

**Example:**
```
    print("Hello")
```
By default, the output is displayed on the terminal through `sys.stdout`.

A file object with a `write()` method can also be provided.

### E. flush Parameter

**Meaning:**

The `flush` parameter controls whether the output buffer should be flushed immediately.

This topic will be covered in detail in the next videos.

## Variables and Data Types

###  What is a Variable?

**Meaning:**

A variable is a container used to store data.

We can create variables and store different values in them.

In Python, we can create different variables to store different types of values.

**Example:**
```
    a = 1
    b = True
    c = "Harry"
    d = None
```
Here:

- `a` stores 1.
- `b` stores True.
- `c` stores "Harry".
- `d` stores None.

###  Assignment Operator (=)

**Meaning:**

The `=` symbol is called the assignment operator.

It is used to assign a value to a variable.

The value on the right-hand side is assigned to the variable on the left-hand side.

**Example:**
```
    a = 1
    print(a)
```
**Output:**

    1

###  Variables Can Store Different Types of Values

A variable can store different types of values, such as numbers, text and Boolean values.

**Example 1:**
```
    b = 9
    print(b)
```
**Output:**

    9

Here, 9 is an integer value.

**Example 2:**
```
    b = "Harry"
    print(b)
```
**Output:**
```
    Harry
```
Here, "Harry" is a string value.

###  What is a Data Type?

**Meaning:**

A data type tells us what kind of data a variable contains.

**Example:**
```
    a = 1
    b = True
    c = "Harry"
    d = None
```
Here:

- 1 → Integer
- True → Boolean
- "Harry" → String
- None → NoneType

**Example of Different Data Types:**
```
    a = 123
    b = "Harry"

    print(a + b)
```
**Output:**
```
    TypeError
```
**Explanation:**

We cannot directly add an integer and a string because they are different data types.

###  What is the type() Function?

**Meaning:**

The `type()` function tells us the data type of a variable or value.

**Example:**
```
    a = 1
    b = True
    c = "Harry"

    print(type(a))
    print(type(b))
    print(type(c))
```
**Output:**
```
    <class 'int'>
    <class 'bool'>
    <class 'str'>
```
###  Python's Built-in Data Types

Python provides different built-in data types.

### A. Numeric Data Types - int, float and complex

####  Integer (int)

**Meaning:**

Integer represents whole numbers without decimal points.

**Examples:**
```
    a = 10
    b = 0
    c = -8
```
####  Float (float)

**Meaning:**

Float represents numbers with decimal points.

**Examples:**
```
    a = 7.349
    b = -9.0
    c = 0.00001
```
####  Complex (complex)

**Meaning:**

Complex numbers have two parts:

- Real Part
- Imaginary Part

**Example:**
```
    a = complex(8, 2)
    print(a)
    print(type(a))
```
**Output:**
```
    (8+2j)
    <class 'complex'>
```
Here:

- 8 is the real part.
- 2j is the imaginary part.

### B. Text Data Type - str

**Meaning:**

String represents text.

Text is written inside single or double quotes.

**Example:**
```
    a = "Harry"
    print(type(a))
```
**Output:**
```
    <class 'str'>
```
### C. Boolean Data Type - bool

**Meaning:**

Boolean has only two possible values:

- True
- False

**Example:**
```
    a = True
    b = False

    print(type(a))
```
**Output:**
```
    <class 'bool'>
```
### D. Sequence Data Types - list and tuple

**Meaning:**

Sequence data types are used to store multiple items inside a single variable.

#### 1. List

**Meaning:**

A list is an ordered collection of items.

Lists are mutable, which means their elements can be changed.

**Example:**
```
    list1 = [8, 2.3, [-4, 5], ["apple", "banana"]]

    print(list1)
```
**Output:**
```
    [8, 2.3, [-4, 5], ['apple', 'banana']]
```
**Important Point:**

A list can contain different data types and even other lists.

Lists are mutable, which means we can change their elements.

#### 2. Tuple

**Meaning:**

A tuple is an ordered collection of items.

Tuples are written using parentheses `()`.

Tuples are immutable, which means their elements cannot be changed after creation.

**Example:**
```
    tuple1 = (("parrot", "sparrow"), ("lion", "tiger"))

    print(tuple1)
```
**Output:**
```
    (('parrot', 'sparrow'), ('lion', 'tiger'))
```
### E. Mapping Data Type - dict (Dictionary)

**Meaning:**

A dictionary stores data in key-value pairs.

It is useful for storing information such as a person's name, age and other details.

Dictionaries are written using curly brackets `{}`.

**Example:**
```
    dict1 = {
        "name": "Sakshi",
        "age": 20,
        "canVote": True
    }

    print(dict1)
```
**Output:**

    {'name': 'Sakshi', 'age': 20, 'canVote': True}

Here:

- `"name"` is a key and `"Sakshi"` is its value.
- `"age"` is a key and `20` is its value.
- `"canVote"` is a key and `True` is its value.

### F. None Data Type - NoneType

**Meaning:**

`None` represents the absence of a value.

It means that no value is currently available.

**Example:**
```
    d = None
    print(type(d))
```
**Output:**
```
    <class 'NoneType'>
```
**Important Difference:**

- `0` → Integer zero.
- `""` → Empty string.
- `None` → No value.

Therefore, None has its own data type called `NoneType`.

## Key Learnings

1. Comments are used to explain code and are ignored during execution.
2. The `#` symbol is used for single-line comments.
3. Comments can temporarily disable a line of code.
4. Escape sequences are used to perform special actions inside strings.
5. `\n` is used to print text on a new line.
6. `\"` is used to display double quotes inside a string.
7. `\'` is used to display single quotes inside a string.
8. The `print()` function displays output on the screen.
9. The `sep` parameter specifies the separator between multiple values.
10. The `end` parameter controls what happens after printing.
11. The `file` parameter specifies the output destination.
12. The `flush` parameter controls immediate flushing of output.
13. Variables are used to store data.
14. The `=` symbol is called the assignment operator.
15. The `type()` function tells us the data type of a value.
16. Python has different built-in data types.
17. Numeric data types include int, float and complex.
18. String represents text and Boolean has True or False values.
19. Lists are ordered and mutable collections.
20. Tuples are ordered and immutable collections.
21. Dictionaries store data in key-value pairs.
22. None represents the absence of a value.
