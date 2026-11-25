# Python - Functions and Lists

# 1. Function Parameters vs Arguments

A function is a reusable block of code that performs a specific task.

**Example:**

```python
def average(a, b):
    print("The average is", (a + b) / 2)

average(4, 6)
```

**Output:**
```text
The average is 5.0
```

**Parameters:** Variables defined inside the function definition are called parameters.

**Arguments:** Actual values passed to a function when calling it are called arguments.

Example:
- `a` and `b` are Parameters.
- `4` and `6` are Arguments.

# 2. Four Types of Function Arguments

Python supports four types of function arguments:

1. Default Arguments
2. Keyword Arguments
3. Required Arguments
4. Variable-Length Arguments

## 2.1 Default Arguments

When a default value is assigned to a parameter during function definition, it is called a Default Argument.

If no value is provided during the function call, Python uses the default value.

**Example:**

```python
def average(a=9, b=1):
    print("The average is", (a + b) / 2)

average()
average(5)
average(b=9)
```

**Output:**
```text
The average is 5.0
The average is 3.0
The average is 9.0
```

**Explanation:**
- `average()` uses both default values.
- `average(5)` assigns 5 to `a` and uses the default value of `b`.
- `average(b=9)` assigns 9 to `b` and uses the default value of `a`.

## 2.2 Keyword Arguments

When values are passed to a function by specifying parameter names, they are called Keyword Arguments.

The order of arguments does not matter when using keyword arguments.

**Example:**

```python
def name(fname, mname, lname):
    print("Hello,", fname, mname, lname)

name(mname="Peter", lname="Buchanan", fname="James")
```

**Output:**
```text
Hello, James Peter Buchanan
```

**Important Points:**
- Parameter names are specified while passing values.
- The order of arguments can be changed.
- Values are assigned to their corresponding parameters.

## 2.3 Required Arguments

Arguments that must be provided when calling a function are called Required Arguments.

If a required argument is missing, Python raises a `TypeError`.

**Example:**

```python
def name(fname, lname):
    print("Hello,", fname, lname)

name("Peter", "Quill")
```

**Output:**
```text
Hello, Peter Quill
```

**Note:** Required arguments must be provided unless a default value is assigned to the parameter.

## 2.4 Variable-Length Arguments (*args)

When we do not know how many arguments will be passed to a function, we can use Variable-Length Arguments.

The `*args` syntax allows a function to accept multiple positional arguments.

**Example:**

```python
def average(*numbers):
    sum = 0

    for i in numbers:
        sum = sum + i

    print("Average is:", sum / len(numbers))

average(5, 6)
average(5, 6, 7, 1)
```

**Output:**
```text
Average is: 5.5
Average is: 4.75
```

**Important Points:**
- `*args` accepts multiple positional arguments.
- Inside the function, arguments are available as a tuple.
- A `for` loop can be used to access individual values.

## 2.5 Arbitrary Keyword Arguments (**kwargs)

When we need to accept multiple keyword arguments, we use `**kwargs`.

**Example:**

```python
def name(**name):
    print(type(name))
    print("Hello,", name["fname"], name["mname"], name["lname"])

name(fname="James", mname="Peter", lname="Buchanan")
```

**Output:**
```text
<class 'dict'>
Hello, James Peter Buchanan
```

**Important Points:**
- `**kwargs` accepts multiple keyword arguments.
- Inside the function, arguments are available as a dictionary.
- Values can be accessed using their keys.

# 3. Return Statement

The `return` statement is used to send a result back from a function.

**Difference between print() and return():**

- `print()` displays the result on the screen.
- `return` sends the result back to the caller, where it can be stored or used further.

**Example:**

```python
def average(*numbers):
    sum = 0

    for i in numbers:
        sum = sum + i

    return sum / len(numbers)

c = average(5, 6, 7, 1)
print(c)
```

**Output:**
```text
4.75
```

## Multiple Return Values

Python functions can return multiple values.

**Example:**

```python
def test():
    return 7, 10

a, b = test()

print(a)
print(b)
```

**Output:**
```text
7
10
```

**Note:** When multiple values are returned, Python packs them into a tuple.


# 4. Introduction to Lists

A List is a built-in Python data type used to store multiple items in a single variable.

**Example:**

```python
marks = [3, 5, 6]

print(marks)
print(type(marks))
```

**Output:**
```text
[3, 5, 6]
<class 'list'>
```

## 4.1 Four Important Properties of Lists

1. **Ordered Collection:** Lists maintain the order of elements.
2. **Multiple Items:** A list can store multiple values.
3. **Square Brackets:** Lists are created using `[]`.
4. **Changeable (Mutable):** List elements can be modified.

## 4.2 Multiple Data Types in a List

Python lists can store elements of different data types.

**Example:**

```python
details = ["Abhijeet", 18, "EIBSCTI", 9.8]

print(details)
```

**Output:**
```text
['Abhijeet', 18, 'EIBSCTI', 9.8]
```

A single list can contain:
- String
- Integer
- Float
- Boolean

## 4.3 List Indexing

Every element in a list has an index number.

In Python, indexing starts from `0`.

**Example:**

```python
marks = [3, 5, 6]

print(marks[0])
print(marks[1])
print(marks[2])
```

**Output:**
```text
3
5
6
```

### Negative Indexing

Python also supports negative indexing.

- `-1` = Last element
- `-2` = Second-last element
- `-3` = Third-last element

**Example:**

```python
marks = [3, 5, 6]

print(marks[-1])
print(marks[-2])
```

**Output:**
```text
6
5
```

## 4.4 Check Whether an Item Exists in a List

Python provides the `in` keyword to check whether an element exists in a list.

**Example:**

```python
marks = [3, 5, 6, "Harry", True]

if 7 in marks:
    print("Yes")
else:
    print("No")
```

**Output:**
```text
No
```

The `in` keyword returns:
- `True` if the element exists.
- `False` if the element does not exist.

## 4.5 List Slicing

List slicing is used to select specific elements from a list.

**Syntax:**

```python
list_name[start:end:jump_index]
```

**Example:**

```python
numbers = [1, 2, 3, 4, 5, 6, 7]

print(numbers[1:4])
```

**Output:**
```text
[2, 3, 4]
```

**Explanation:**
- `start` = Starting index.
- `end` = Ending index (excluded).
- `jump_index` = Number of positions to skip between selected elements.

**Example:**

```python
numbers = [1, 2, 3, 4, 5, 6, 7]

print(numbers[1:7:2])
```

**Output:**
```text
[2, 4, 6]
```

## 4.6 List Comprehension

List Comprehension is a concise way to create a new list from an existing iterable.

It can use a loop and an optional condition.

**Syntax:**

```python
new_list = [expression for item in iterable if condition]
```

**Four Parts of List Comprehension:**

1. Expression
2. Item
3. Iterable
4. Condition

### Example 1: Simple List Comprehension

```python
lst = [i for i in range(4)]

print(lst)
```

**Output:**
```text
[0, 1, 2, 3]
```

### Example 2: Using an Expression

```python
lst = [i*i for i in range(10)]

print(lst)
```

**Output:**
```text
[0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
```

Here, `i*i` calculates the square of each number.

### Example 3: Using a Condition

```python
lst = [i for i in range(10) if i % 2 == 0]

print(lst)
```

**Output:**
```text
[0, 2, 4, 6, 8]
```

The condition checks whether a number is even.

### Example 4: String List Comprehension

```python
names = ["Milo", "Sarah", "Bruno", "Anastasia", "Raju"]

names_with_o = [item for item in names if "o" in item]

print(names_with_o)
```

**Output:**
```text
['Milo', 'Bruno']
```

### Example 5: Length-Based Selection

```python
names = ["Milo", "Sarah", "Bruno", "Anastasia", "Raju"]

names_with_length = [item for item in names if len(item) > 4]

print(names_with_length)
```

**Output:**
```text
['Sarah', 'Bruno', 'Anastasia']
```

# 5. Python List Methods

List methods are built-in methods used to modify, sort, reverse, and manipulate lists.

## 5.1 append()

The `append()` method adds a single element to the end of a list.

**Example:**

```python
l = [1, 2, 4, 6]

print(l)

l.append(7)

print(l)
```

**Output:**
```text
[1, 2, 4, 6]
[1, 2, 4, 6, 7]
```

**Important Points:**
- Adds an element at the end of the list.
- Modifies the original list.
- Adds one element per call.

## 5.2 sort()

The `sort()` method arranges list elements in ascending order by default.

**Example:**

```python
l = [11, 45, 1, 2, 4, 6]

l.sort()

print(l)
```

**Output:**
```text
[1, 2, 4, 6, 11, 45]
```

### Descending Order

To sort a list in descending order, use the `reverse=True` parameter.

**Example:**

```python
l = [11, 45, 1, 2, 4, 6]

l.sort(reverse=True)

print(l)
```

**Output:**
```text
[45, 11, 6, 4, 2, 1]
```

**Important Points:**
- Default sorting is in ascending order.
- `reverse=True` sorts in descending order.
- The original list is modified.

## 5.3 reverse()

The `reverse()` method reverses the existing order of elements in a list.

**Example:**

```python
l = [11, 45, 1, 2, 4, 6]

l.reverse()

print(l)
```

**Output:**
```text
[6, 4, 2, 1, 45, 11]
```

**Important:**

`reverse()` and `sort(reverse=True)` are different.

- `reverse()` reverses the current order.
- `sort(reverse=True)` sorts elements in descending order.

## 5.4 index()

The `index()` method returns the index of the first occurrence of a specified element.

**Example:**

```python
l = [11, 45, 1, 2, 4, 6]

print(l.index(1))
```

**Output:**
```text
2
```

The element `1` is present at index number `2`.

### Duplicate Elements

```python
l = [11, 45, 1, 2, 4, 6, 1, 1]

print(l.index(1))
```

**Output:**
```text
2
```

**Note:** If an element appears multiple times, `index()` returns the index of its first occurrence.

## 5.5 count()

The `count()` method returns the number of times a specified element appears in a list.

**Example:**

```python
l = [11, 45, 1, 2, 4, 6, 1, 1]

print(l.count(1))
```

**Output:**
```text
3
```

Here, the element `1` appears three times.

## 5.6 copy()

The `copy()` method creates a separate copy of an existing list.

**Example:**

```python
l = [11, 45, 1, 2, 4, 6]

m = l.copy()

m[0] = 0

print(l)
print(m)
```

**Output:**
```text
[11, 45, 1, 2, 4, 6]
[0, 45, 1, 2, 4, 6]
```

**Important: Reference vs Copy**

Consider the following example:

```python
l = [11, 45, 1, 2, 4, 6]

m = l

m[0] = 0

print(l)
```

**Output:**
```text
[0, 45, 1, 2, 4, 6]
```

**Explanation:**
- `m = l` does not create a new list.
- Both variables refer to the same list object.
- Changes made through `m` also affect `l`.
- `m = l.copy()` creates a separate shallow copy.

Use `copy()` when you need an independent list.

## 5.7 insert()

The `insert()` method inserts an element at a specified index.

**Syntax:**

```python
list_name.insert(index, element)
```

**Example:**

```python
l = [11, 45, 1, 2, 4, 6]

l.insert(1, 899)

print(l)
```

**Output:**
```text
[11, 899, 45, 1, 2, 4, 6]
```

**Explanation:**
- `1` = Index number.
- `899` = Element to insert.

The element `899` is inserted at index `1`, and the remaining elements shift to the right.

## 5.8 extend()

The `extend()` method adds all elements from another iterable to the end of an existing list.

**Example:**

```python
l = [11, 45, 1, 2, 4, 6]

m = [900, 1000, 1100]

l.extend(m)

print(l)
```

**Output:**
```text
[11, 45, 1, 2, 4, 6, 900, 1000, 1100]
```

**Explanation:**
- Elements from `m` are added individually to the end of `l`.
- The original list `l` is modified.

## 5.9 Concatenating Two Lists

The `+` operator can be used to combine two lists into a new list.

**Example:**

```python
l = [11, 45, 1, 2, 4, 6]

m = [900, 1000, 1100]

k = l + m

print(k)
```

**Output:**
```text
[11, 45, 1, 2, 4, 6, 900, 1000, 1100]
```

**Important Points:**
- The `+` operator combines two lists.
- A new list is created.
- The original lists remain unchanged.

# 6. Difference Between Important List Methods

| Method | Purpose |
|---|---|
| append() | Adds one element at the end |
| sort() | Sorts the elements |
| reverse() | Reverses the existing order |
| index() | Returns the first occurrence index |
| count() | Counts the occurrences of an element |
| copy() | Creates a separate list copy |
| insert() | Inserts an element at a specified index |
| extend() | Adds elements from another iterable |
| + operator | Combines two lists |

# 7. Important Differences

## append() vs extend()

**append():**

```python
l = [1, 2, 3]
m = [4, 5]

l.append(m)

print(l)
```

**Output:**
```text
[1, 2, 3, [4, 5]]
```

**extend():**

```python
l = [1, 2, 3]
m = [4, 5]

l.extend(m)

print(l)
```

**Output:**
```text
[1, 2, 3, 4, 5]
```

**Difference:**
- `append()` adds the entire list as a single element.
- `extend()` adds individual elements from the second list.

# 8. Key Learnings

1. Functions are reusable blocks of code.
2. Parameters are defined in function definitions, while arguments are passed during function calls.
3. Python supports Default, Keyword, Required, and Variable-Length Arguments.
4. `*args` accepts multiple positional arguments.
5. `**kwargs` accepts multiple keyword arguments.
6. The `return` statement sends results back from a function.
7. Python lists are ordered and mutable collections.
8. List indexing starts from `0`, and negative indexing is also supported.
9. The `in` keyword checks whether an element exists in a list.
10. List slicing selects specific elements from a list.
11. List comprehension provides a concise way to create new lists.
12. `append()` adds one element, whereas `extend()` adds multiple elements.
13. `sort()` arranges elements in ascending or descending order.
14. `reverse()` reverses the existing order of elements.
15. `index()` returns the index of the first occurrence.
16. `count()` returns the number of occurrences of an element.
17. `copy()` creates a separate shallow copy of a list.
18. `insert()` adds an element at a specified index.
19. The `+` operator combines two lists.

