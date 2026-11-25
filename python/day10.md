# Python Day 10 – Tuples, F-Strings, Docstrings and PEP 8

# 1. Introduction to Tuples

A Tuple is a built-in Python data type used to store multiple values in a single variable.

## Important Properties of Tuples

- Tuple items are comma-separated.
- A Tuple can store multiple data types.
- Tuples are immutable (unchangeable).
- Tuples are generally written using round brackets `()`.

## Example

```python
tup = (1, 2, 3, 4, 5)

print(tup)
```

**Output:**
```text
(1, 2, 3, 4, 5)
```

# 2. Different Data Types in Tuples

A Tuple can store multiple data types such as strings, integers, floats and booleans.

## Example

```python
details = ("Abhijeet", 18, "PYBSCIT", 90)

print(details)
```

**Output:**
```text
('Abhijeet', 18, 'PYBSCIT', 90)
```

# 3. Single Element Tuple

To create a Tuple containing only one element, a comma is necessary after the element.

## Incorrect Example

```python
tup = (1)

print(type(tup))
```

**Output:**
```text
<class 'int'>
```

Python considers this an integer, not a Tuple.

## Correct Example

```python
tup = (1,)

print(type(tup))
```

**Output:**
```text
<class 'tuple'>
```

**Remember:** A comma is necessary when creating a single-element Tuple.

# 4. Tuple is Immutable

Tuples are immutable, which means their existing elements cannot be modified after creation.

## Example

```python
tup = (1, 2, 76, 342, 32)

tup[0] = 90

print(tup)
```

**Output:**
```text
TypeError: 'tuple' object does not support item assignment
```

Python raises a TypeError because Tuple elements cannot be directly modified.

# 5. Tuple Indexing

Tuple indexing works in the same way as List indexing.

- Positive indexing starts from 0.
- Negative indexing starts from -1.

## Example

```python
tup = (1, 2, 76, 342, 32, "green", True)

print(tup[0])
print(tup[1])
print(tup[-1])
```

**Output:**
```text
1
2
True
```

# 6. Tuple Length – len()

The `len()` function returns the total number of elements in a Tuple.

## Example

```python
tup = (1, 2, 76, 342, 32, "green", True)

print(len(tup))
```

**Output:**
```text
7
```

# 7. Checking an Item – in Keyword

The `in` keyword checks whether a particular element exists in a Tuple.

## Example

```python
tup = (1, 2, 76, 342, 32)

if 342 in tup:
    print("342 is present in tuple")
```

**Output:**
```text
342 is present in tuple
```

# 8. Tuple Slicing

Tuple slicing works in the same way as List slicing.

## Syntax

```python
tuple[start:end:jumpIndex]
```

- start: Starting index.
- end: Ending index (excluded).
- jumpIndex: Step size.

## Example

```python
animals = ("cat", "dog", "bat")

print(animals[1:3])
```

**Output:**
```text
('dog', 'bat')
```

# 9. Manipulating Tuples (Tuple Methods)

Tuples are immutable, so we cannot directly:

- Add new elements.
- Remove existing elements.
- Modify existing elements.

However, there is a workaround.

## Converting Tuple into List

We can convert a Tuple into a List, make changes, and convert it back into a Tuple.

## Example

```python
countries = ("Spain", "Italy", "India", "England", "Germany")

temp = list(countries)

temp.append("Russia")

temp.pop(3)

temp[2] = "Finland"

countries = tuple(temp)

print(countries)
```

**Output:**
```text
('Spain', 'Italy', 'Finland', 'Germany', 'Russia')
```

**Explanation:**

1. `list(countries)` converts the Tuple into a List.
2. `append()` adds a new element.
3. `pop(3)` removes the element at index 3.
4. `temp[2]` modifies the element at index 2.
5. `tuple(temp)` converts the List back into a Tuple.

**Important:** The original Tuple is not modified. A new Tuple is created after making the changes.

# 10. Tuple Concatenation

We can combine two or more Tuples using the `+` operator.

## Example

```python
countries1 = ("India", "Afghanistan", "Russia", "China")

countries2 = ("Vietnam", "Sri Lanka", "Myanmar")

Asia = countries1 + countries2

print(Asia)
```

**Output:**
```text
('India', 'Afghanistan', 'Russia', 'China', 'Vietnam', 'Sri Lanka', 'Myanmar')
```

**Remember:** Original Tuples remain unchanged. A new Tuple is created.

# 11. Tuple count() Method

The `count()` method returns the total number of occurrences of a particular element in a Tuple.

## Syntax

```python
tuple.count(element)
```

## Example

```python
tup = (1, 2, 3, 2, 3, 1, 3, 2, 3)

print(tup.count(3))
```

**Output:**
```text
4
```

The number 3 appears four times in the Tuple.

# 12. Tuple index() Method

The `index()` method returns the index of the first occurrence of a specified element.

## Syntax

```python
tuple.index(element, start, end)
```

- element: Element whose index needs to be found.
- start: Starting index for searching.
- end: Ending index (excluded).

## Example 1

```python
tuple1 = (0, 1, 2, 3, 2, 3, 1, 3, 2, 3)

res = tuple1.index(3)

print("First occurrence of 3 is:", res)
```

**Output:**
```text
First occurrence of 3 is: 3
```

## Example 2

```python
tuple1 = (0, 1, 2, 3, 2, 3, 1, 3, 2, 3)

res = tuple1.index(3, 4, 8)

print(res)
```

**Output:**
```text
5
```

Searching starts from index 4 and stops before index 8.


# 13. String Formatting in Python

String formatting is used to insert variable values inside a string.

Suppose we want to print a person's name and country.

If the values change, manually modifying the entire string becomes inconvenient.

Python provides the `format()` method and F-Strings to solve this problem.

# 14. format() Method

The `format()` method is a string method that inserts variable values into `{}` placeholders.

## Example

```python
letter = "Hey my name is {} and I am from {}"

country = "India"
name = "Harry"

print(letter.format(name, country))
```

**Output:**
```text
Hey my name is Harry and I am from India
```

## Important: Order of Arguments

The order of arguments in the `format()` method is important.

```python
print(letter.format(country, name))
```

**Output:**
```text
Hey my name is India and I am from Harry
```

The values change because the order of arguments has changed.

# 15. F-Strings in Python

F-String stands for Formatted String Literal.

F-Strings were introduced in Python 3.6.

Their main purpose is to insert variables and expressions directly inside a string.

## Syntax

```python
f"Your string {variable}"
```

By adding `f` before a string, Python evaluates variables and expressions inside curly braces `{}`.

## Example

```python
name = "Harry"
country = "India"

print(f"Hey my name is {name} and I am from {country}")
```

**Output:**
```text
Hey my name is Harry and I am from India
```

# 16. Decimal Formatting Using F-Strings

F-Strings can also format decimal values to a specific number of decimal places.

## Example 1 – Two Decimal Places

```python
price = 49.09999

txt = f"For only {price:.2f} dollars!"

print(txt)
```

**Output:**
```text
For only 49.10 dollars!
```

## Example 2 – Three Decimal Places

```python
price = 49.09999

print(f"{price:.3f}")
```

**Output:**
```text
49.100
```

**Important:**

- `.2f` means two decimal places.
- `.3f` means three decimal places.
- Python performs rounding when formatting decimal values.

# 17. Expressions Inside F-Strings

We can also write mathematical expressions inside F-Strings.

## Example

```python
print(f"{2 * 30}")
```

**Output:**
```text
60
```

Python evaluates the expression first and then inserts the result into the string.

# 18. Literal Curly Braces in F-Strings

Sometimes we want to print curly braces `{}` as normal characters instead of evaluating a variable.

For this, we use double curly braces `{{ }}`.

## Example

```python
name = "Harry"

print(f"Hey my name is {{name}}")
```

**Output:**
```text
Hey my name is {name}
```

**Rule:**

- `{name}` → Prints the variable value.
- `{{name}}` → Prints literal `{name}`.


# 19. Docstrings in Python

Docstring stands for Documentation String.

Docstrings are used to document Python code and explain the purpose of functions, methods, classes and modules.

## Definition

Python docstrings are string literals that appear right after the definition of a function, method, class or module.

## Example

```python
def square(n):
    '''Takes in a number n, returns the square of n'''
    print(n**2)

square(5)
```

**Output:**
```text
25
```

Here:

- `square()` is the function name.
- `n` is the function parameter.
- The text inside triple quotes is the Docstring.
- `print(n**2)` calculates the square of the number.

The Docstring describes what the function does and what input it expects.

# 20. Accessing Docstrings – __doc__

Python provides the `__doc__` attribute to access a function's Docstring.

## Example

```python
def square(n):
    '''Takes in a number n, returns the square of n'''
    return n**2

print(square.__doc__)
```

**Output:**
```text
Takes in a number n, returns the square of n
```

The `__doc__` attribute returns the documentation associated with the function.

# 21. Comments vs Docstrings

## Python Comments

Comments are descriptions that help programmers understand the intent and functionality of a program.

Comments are written using the `#` symbol.

The Python interpreter ignores comments.

## Python Docstrings

Docstrings are string literals written immediately after the definition of a function, method, class or module.

They are used to document code.

We can access them using the `__doc__` attribute.

## Difference Between Comments and Docstrings

| Comments | Docstrings |
|---|---|
| Written using `#` | Written using string literals |
| Explain the code | Document functions, classes and modules |
| Cannot be accessed using `__doc__` | Can be accessed using `__doc__` |
| Ignored by the Python interpreter | Stored in the object's `__doc__` attribute |

# 22. Correct Placement of Docstrings

A Docstring must be the first statement inside a function, class or module.

## Correct Example

```python
def square(n):
    '''Takes in a number n, returns the square of n'''
    print(n**2)

print(square.__doc__)
```

**Output:**
```text
Takes in a number n, returns the square of n
```

## Incorrect Example

```python
def square(n):
    print(n)

    '''This is not a docstring'''

    print(n**2)

print(square.__doc__)
```

**Output:**
```text
None
```

The string is not recognized as a Docstring because it is not the first statement in the function body.

**Remember:** Always place the Docstring immediately after the function, class or module definition.


# 23. PEP 8 – Python Coding Guidelines

PEP 8 is an official document that provides guidelines and best practices for writing Python code.

## Full Form

PEP stands for Python Enhancement Proposal.

## Who Created PEP 8?

According to the lesson, PEP 8 was written in 2001 by:

1. Guido van Rossum
2. Barry Warsaw
3. Nick Coghlan

## Main Purpose of PEP 8

The main purpose of PEP 8 is to improve:

- Code readability.
- Code consistency.
- Code maintainability.
- Code structure.

PEP 8 helps developers follow a consistent coding style.

## Example

```python
# Good naming and readable formatting

student_name = "Harsh"
student_age = 25

print(student_name)
print(student_age)
```

The variable names are descriptive, making the code easier to understand.

**Important:** PEP 8 is a coding style guide, not a programming language or Python syntax.


# 24. Zen of Python

The Zen of Python is a collection of guiding principles for Python programming.

It was written by Tim Peters.

We can display it by running a command in the Python interpreter.

## Command

```python
import this
```

**Output:**

The Zen of Python poem is displayed.


# 25. Easter Egg in Python

Python contains an Easter egg that displays the Zen of Python.

## Example

```python
import this
```

**Output:**

The Zen of Python poem is displayed.

This Easter egg was intentionally included in Python.


# 28. Important Syntax Revision

| Concept | Syntax |
|---|---|
| Create Tuple | `tup = (1, 2, 3)` |
| Single Element Tuple | `tup = (1,)` |
| Tuple Indexing | `tup[0]` |
| Tuple Slicing | `tup[1:3]` |
| Tuple Length | `len(tup)` |
| Check Element | `3 in tup` |
| Convert to List | `list(tup)` |
| Convert to Tuple | `tuple(temp)` |
| Tuple Concatenation | `tup1 + tup2` |
| Count Elements | `tup.count(3)` |
| Find Index | `tup.index(3)` |
| String Formatting | `"Hello {}".format(name)` |
| F-String | `f"Hello {name}"` |
| Decimal Formatting | `f"{price:.2f}"` |
| Access Docstring | `function.__doc__` |
| Zen of Python | `import this` |


# 27. Key Learnings

1. Introduction to Tuples.
2. Different data types in Tuples.
3. Single-element Tuple creation.
4. Tuple immutability.
5. Tuple indexing and slicing.
6. `len()` function and `in` keyword.
7. Tuple to List conversion and vice versa.
8. Tuple concatenation using `+`.
9. Tuple `count()` and `index()` methods.
10. String formatting using `format()`.
11. F-Strings and their syntax.
12. Decimal formatting using F-Strings.
13. Expressions inside F-Strings.
14. Literal curly braces in F-Strings.
15. Docstrings and their placement.
16. Accessing Docstrings using `__doc__`.
17. Comments vs Docstrings.
18. PEP 8 coding guidelines.
19. Zen of Python and its principles.
20. `import this` Easter egg.

