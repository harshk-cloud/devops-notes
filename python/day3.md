# Day 3 - Calculator Using Python

##  Operators in Python

### 1. What are Operators?

**Meaning:**

Operators are special symbols that help us perform calculations or operations in Python.

**Purpose:**

- Perform mathematical calculations.
- Perform different operations on values.
- Make calculations easier using Python.

**Example:**
```
    print(15 + 7)
    print(15 * 6)
```
**Output:**
```
    22
    90
```
**Explanation:**

- `15` and `7` are called Operands.
- `+` is called an Operator.
- Operands are the values on which operators perform operations.

### 2. Arithmetic Operators

**Meaning:**

Arithmetic operators are used to perform mathematical calculations in Python.

**Purpose:**

They help us perform basic mathematical operations such as addition, subtraction, multiplication and division.

| Operator | Name | Meaning |
|---|---|---|
| `+` | Addition | Adding numbers |
| `-` | Subtraction | Subtracting numbers |
| `*` | Multiplication | Multiplying numbers |
| `/` | Division | Dividing numbers |
| `//` | Floor Division | Returns floor value |
| `%` | Modulus | Returns remainder |
| `**` | Exponentiation | Calculates power |

### 3. Addition (+)

**Meaning:**

Addition operator is used to add two or more numbers.

**Example:**
```
    print(15 + 6)
```
**Output:**
```
    21
```
### 4. Subtraction (-)

**Meaning:**

Subtraction operator is used to subtract one number from another.

**Example:**
```
    print(15 - 6)
```
**Output:**
```
    9
```
### 5. Multiplication (*)

**Meaning:**

Multiplication operator is used to multiply two numbers.

**Example:**
```
    print(15 * 6)
```
**Output:**
```
    90
```
### 6. Division (/)

**Meaning:**

Division operator divides one number by another number.

**Purpose:**

It is used to divide values and always returns a float value in Python.

**Example:**
```
    print(12 / 6)
    print(15 / 4)
```
**Output:**
```
    2.0
    3.75
```
**Important:**

Even if the result is a whole number, Python returns it as a float.

### 7. Floor Division (//)

**Meaning:**

Floor division returns the greatest integer that is less than or equal to the division result.

**Purpose:**

It is used when we need the floor value instead of a decimal result.

**Example:**
```
    print(15 // 6)
    print(17 // 5)
    print(-7 // 2)
```
**Output:**
```
    2
    3
    -4
```
**Explanation:**

- `15 // 6` gives `2`.
- `17 // 5` gives `3`.
- `-7 // 2` gives `-4`, not `-3`.

**Important:**

The actual result of `-7 / 2` is `-3.5`.

Python floor division rounds down towards negative infinity, so the answer is `-4`.

### 8. Modulus (%)

**Meaning:**

Modulus operator returns the remainder after division.

**Purpose:**

It is used to find the remainder of a division operation.

**Example:**
```
    print(5 % 3)
    print(10 % 2)
    print(15 % 4)
```
**Output:**
```
    2
    0
    3
```
**Explanation:**

- `5 % 3` gives `2`.
- `10 % 2` gives `0`.
- `15 % 4` gives `3`.

### 9. Exponentiation (**)

**Meaning:**

Exponentiation operator calculates the power of a number.

**Purpose:**

It is used to multiply a number by itself multiple times.

**Example:**
```
    print(5 ** 3)
    print(2 ** 3)
```
**Output:**
```
    125
    8
```
**Explanation:**

- `5 ** 3` = 5 × 5 × 5 = 125
- `2 ** 3` = 2 × 2 × 2 = 8

## 10. Calculator Operations Using Python

**Meaning:**

We can use arithmetic operators and variables to create a simple calculator in Python.

**Purpose:**

It helps us perform multiple mathematical operations using variables.

**Example:**
```
    a = 14
    b = 4

    print("The value of", a, "+", b, "is", a + b)
    print("The value of", a, "-", b, "is", a - b)
    print("The value of", a, "*", b, "is", a * b)
    print("The value of", a, "/", b, "is", a / b)
    print("The value of", a, "//", b, "is", a // b)
    print("The value of", a, "%", b, "is", a % b)
```
**Output:**
```
    The value of 14 + 4 is 18
    The value of 14 - 4 is 10
    The value of 14 * 4 is 56
    The value of 14 / 4 is 3.5
    The value of 14 // 4 is 3
    The value of 14 % 4 is 2
```
**Explanation:**

- `a = 14` assigns 14 to variable a.
- `b = 4` assigns 4 to variable b.
- Python performs different calculations using these variables.
- `print()` displays the results on the screen.

## Key Learnings

- Operators are special symbols used to perform operations.
- Values on which operators perform operations are called Operands.
- Arithmetic operators perform mathematical calculations.
- `+` is used for addition.
- `-` is used for subtraction.
- `*` is used for multiplication.
- `/` always returns a float value.
- `//` returns the floor value.
- `%` returns the remainder.
- `**` calculates the power of a number.
- Variables can be used to perform multiple calculations in Python.
