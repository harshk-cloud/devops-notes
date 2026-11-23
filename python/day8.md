
# Python Day 8 – Break, Continue & Functions

## 1. Break Statement

**Definition:**

The `break` statement is used to terminate a loop before its normal completion.

In simple words, break means exit the loop immediately.

**Example:**

```python
for i in range(12):
    if i == 10:
        break
    print(i)

print("Loop khatam ho gaya")
```

**Output:**

```text
0
1
2
3
4
5
6
7
8
9
Loop khatam ho gaya
```

**Explanation:**

- The loop starts from 0.
- It checks the condition `i == 10` in every iteration.
- When `i` becomes 10, the condition becomes True.
- The `break` statement terminates the loop.
- The statement after the loop gets executed.

**Important:** Break terminates only the loop in which it is executed.

## 2. Continue Statement

**Definition:**

The `continue` statement skips the remaining code of the current iteration and moves directly to the next iteration.

In simple words, continue means skip the current iteration and move to the next one.

**Example:**

```python
for i in range(12):
    if i == 10:
        continue
    print(i)
```

**Output:**

```text
0
1
2
3
4
5
6
7
8
9
11
```

**Explanation:**

- The loop starts from 0.
- When `i` becomes 10, the condition becomes True.
- The `continue` statement skips the remaining code for that iteration.
- The loop moves to the next iteration.
- Therefore, 10 is not printed, but 11 is printed.

## 3. Difference Between Break and Continue

| Break | Continue |
|---|---|
| Terminates the entire loop. | Skips only the current iteration. |
| Exits the loop immediately. | Moves to the next iteration. |
| Used when we want to stop a loop. | Used when we want to skip a particular iteration. |

**Remember:**

- Break = Exit the loop.
- Continue = Skip the current iteration.

## 4. Do-While Loop Emulation in Python

**Definition:**

A do-while loop is a loop in which a set of instructions executes at least once, irrespective of the condition.

After the first execution, the repetition of the loop depends on the condition.

It is also known as an exit-controlled loop.

**Do-While Loop Syntax (C/C++):**

```c
do {
    // Loop body
} while (condition);
```

**How to Emulate a Do-While Loop in Python?**

Python does not have a built-in do-while loop.

We can emulate similar behaviour using an infinite `while` loop and a `break` statement.

**Example:**

```python
i = 0

while True:
    print(i)
    i = i + 1

    if i % 100 == 0:
        break
```

**Output:**

```text
0
1
2
3
4
...
95
96
97
98
99
```

**Explanation:**

- `i = 0` initializes the variable.
- `while True` creates an infinite loop.
- `print(i)` prints the current value.
- `i = i + 1` increments the value by 1.
- `i % 100 == 0` checks whether i is divisible by 100.
- When i becomes 100, the condition becomes True.
- The `break` statement terminates the loop.

**Important:** The loop body executes before the condition is checked. Therefore, numbers from 0 to 99 are printed.


# Functions in Python

## 5. What is a Function?

**Definition:**

A function is a reusable block of code that performs a specific task whenever it is called.

In simple words, we write the code of a particular task inside a function once and call that function multiple times whenever required.

**Why Do We Use Functions?**

- To reuse code multiple times.
- To avoid writing the same code repeatedly.
- To reduce the number of lines in a program.
- To make code organized and easier to maintain.
- To make updating and debugging easier.

## 6. Understanding Without Functions

Suppose we want to calculate the same result for two different pairs of numbers.

**Example:**

```python
a = 9
b = 8

gmean1 = (a * b) / (a + b)
print(gmean1)

c = 8
d = 7

gmean2 = (c * d) / (c + d)
print(gmean2)
```

**Output:**

```text
4.235294117647059
3.7333333333333334
```

**Explanation:**

Here, we have written the same calculation twice.

If we need to perform this calculation 20 times, we will have to repeat the same code multiple times.

This problem can be solved using functions.

## 7. Creating a Function – def Keyword

In Python, we use the `def` keyword to create a user-defined function.

**Syntax:**

```python
def function_name(parameters):
    # Code and statements
```

**Example:**

```python
def calculateGmean(a, b):
    mean = (a * b) / (a + b)
    print(mean)
```

**Explanation:**

- `def` – Keyword used to define a function.
- `calculateGmean` – Name of the function.
- `a, b` – Parameters accepted by the function.
- `:` – Indicates the beginning of the function body.
- Indented statements – Code inside the function.

**Important:** Defining a function does not execute its code immediately. The function executes when it is called.

## 8. Function Calling

We call a function by writing its name followed by parentheses and passing the required arguments.

**Example:**

```python
def calculateGmean(a, b):
    mean = (a * b) / (a + b)
    print(mean)


a = 9
b = 8

calculateGmean(a, b)

c = 8
d = 7

calculateGmean(c, d)
```

**Output:**

```text
4.235294117647059
3.7333333333333334
```

**Explanation:**

- First, we define the function.
- Then, we assign values to variables.
- `calculateGmean(a, b)` calls the function using a and b.
- The function performs the calculation and prints the result.
- We call the same function again using c and d.

This is called **Code Reusability**.

## 9. Parameters and Arguments

Parameters and arguments are two important concepts in functions.

**Parameters:**

Variables written inside the parentheses of a function definition are called parameters.

**Arguments:**

Actual values passed to a function when calling it are called arguments.

**Example:**

```python
def calculateGmean(a, b):
    mean = (a * b) / (a + b)
    print(mean)


calculateGmean(9, 8)
```

Here:

- `a` and `b` are parameters.
- `9` and `8` are arguments.

## 10. Another Example – isGreater()

We can also create a function to check which of two numbers is greater.

**Example:**

```python
def isGreater(a, b):
    if a > b:
        print("First number is greater")
    else:
        print("Second number is greater or equal")


a = 9
b = 8

isGreater(a, b)

c = 8
d = 74

isGreater(c, d)
```

**Output:**

```text
First number is greater
Second number is greater or equal
```

**Explanation:**

- The function accepts two parameters: a and b.
- The `if` statement checks whether a is greater than b.
- If the condition is True, it prints the first message.
- Otherwise, it prints the second message.
- We can reuse the same function with different values.

## 11. Indentation in Functions

Indentation is very important in Python.

All statements inside a function must be properly indented.

**Example:**

```python
def isGreater(a, b):
    if a > b:
        print("First number is greater")
    else:
        print("Second number is greater or equal")
```

**Important Points:**

- The function body must be indented.
- Statements inside an if block need another indentation level.
- Statements inside an else block also need proper indentation.
- Incorrect indentation can cause an `IndentationError`.

## 12. Pass Statement

Sometimes, we define a function but want to write its body later.

In such situations, we can use the `pass` statement.

**Definition:**

The `pass` statement is a null operation. It does nothing when executed.

**Example:**

```python
def isLesser(a, b):
    pass
```

**Explanation:**

- `pass` tells Python to do nothing.
- It works as a placeholder.
- It prevents errors caused by an empty function body.
- We can add the actual function logic later.

**Important:** Pass does not automatically complete the function. We must write its actual logic ourselves.

## 13. Types of Functions

There are two types of functions in Python:

### 1. Built-in Functions

These functions are already defined and pre-coded in Python.

We do not need to define them using the `def` keyword.

**Examples:**

```python
min()
max()
len()
sum()
type()
range()
dict()
list()
tuple()
set()
print()
```

### 2. User-defined Functions

These are functions created by the programmer according to specific requirements.

We use the `def` keyword to create user-defined functions.

**Example:**

```python
def greet():
    print("Hello Harsh")


greet()
```

**Output:**

```text
Hello Harsh
```

## 14. Function Naming Rules

The rules for naming functions are similar to the rules for naming variables.

**Important Rules:**

- A function name can contain letters, numbers and underscores.
- A function name cannot start with a number.
- Spaces are not allowed in function names.
- Python keywords cannot be used as function names.
- Function names are case-sensitive.

**Examples:**

```python
def calculate_mean():
    pass

def isGreater():
    pass
```

## 15. Another Example – Function with Two Arguments

**Example:**

```python
def name(fname, lname):
    print("Hello,", fname, lname)


name("Sam", "Wilson")
```

**Output:**

```text
Hello, Sam Wilson
```

**Explanation:**

- `name` is the function name.
- `fname` and `lname` are parameters.
- `"Sam"` and `"Wilson"` are arguments.
- The function prints the provided names.


# Key Learnings

1. The `break` statement terminates a loop immediately.
2. The `continue` statement skips the current iteration and moves to the next one.
3. A do-while loop executes its body at least once before checking the condition.
4. Python can emulate do-while behaviour using `while True` and `break`.
5. A function is a reusable block of code that performs a specific task.
6. The `def` keyword is used to define user-defined functions.
7. Parameters are variables in a function definition, while arguments are actual values passed during a function call.
8. The `pass` statement does nothing and acts as a placeholder.
9. Python functions are divided into two types: Built-in Functions and User-defined Functions.


