# Python Day 11 – Recursion and Sets

## 1. Recursion in Python

### What is Recursion?

Recursion is the process of defining something in terms of itself.

In Python, recursion occurs when a function calls itself to solve a problem.

- A function calls itself repeatedly.
- Each recursive call works on a smaller problem.
- A base condition is required to stop recursion.
- Without a base condition, recursion can continue indefinitely.

### Example: Factorial Using Recursion

Factorial means multiplying a number by all positive integers smaller than it.

Example:

```text
4! = 4 × 3 × 2 × 1 = 24
3! = 3 × 2 × 1 = 6
```

### Python Code

```python
def factorial(n):
    if n == 0 or n == 1:
        return 1
    else:
        return n * factorial(n - 1)

print(factorial(3))
print(factorial(4))
```

**Output:**

```text
6
24
```

### Understanding the Code

- `def factorial(n)`: Defines a recursive function.
- `if n == 0 or n == 1`: Base condition.
- `return 1`: Stops the recursion.
- `return n * factorial(n - 1)`: Calls the same function with a smaller value.

### How Recursion Works

For `factorial(4)`:

```text
factorial(4)
= 4 * factorial(3)
= 4 * 3 * factorial(2)
= 4 * 3 * 2 * factorial(1)
= 4 * 3 * 2 * 1
= 24
```

### Base Condition

The base condition is the condition that stops a recursive function from calling itself.

```python
if n == 0 or n == 1:
    return 1
```

Without a base condition, the function may result in a `RecursionError`.

## 2. Fibonacci Sequence

The Fibonacci sequence is a series in which each next number is the sum of the previous two numbers.

### Fibonacci Formula

```text
F(0) = 0
F(1) = 1

F(n) = F(n-1) + F(n-2)
```

### Fibonacci Sequence

```text
0, 1, 1, 2, 3, 5, 8, 13, 21, 34 ...
```

### Example

```text
F(0) = 0
F(1) = 1

F(2) = 0 + 1 = 1
F(3) = 1 + 1 = 2
F(4) = 1 + 2 = 3
F(5) = 2 + 3 = 5
F(6) = 3 + 5 = 8
```

Each new number is calculated by adding the previous two numbers.

## 3. Sets in Python

### What is a Set?

A set is a collection of well-defined objects in Python.

- A set stores multiple values.
- It can contain different data types.
- Duplicate values are not allowed.
- Sets are unordered.
- Sets are mutable.
- Sets do not support indexing.

### Creating a Set

We can create a set using curly brackets `{}`.

**Example 1:**

```python
s = {2, 4, 2, 6}

print(s)
```

**Output:**

```text
{2, 4, 6}
```

Duplicate values are automatically removed.

**Example 2:**

```python
info = {"Carla", 19, False, 5.9}

print(info)
```

**Output:**

```text
{False, 19, 5.9, 'Carla'}
```

A set can store strings, integers, floats and Boolean values together.

### Important Properties of Sets

1. Sets do not allow duplicate values.
2. Sets are unordered collections.
3. Sets are mutable.
4. Sets do not support indexing.
5. Different data types can be stored in a set.

### Empty Set vs Empty Dictionary

To create an empty set, use `set()`.

```python
harry = set()

print(harry)
print(type(harry))
```

**Output:**

```text
set()
<class 'set'>
```

To create an empty dictionary, use `{}`.

```python
harry = {}

print(type(harry))
```

**Output:**

```text
<class 'dict'>
```

**Important:**

- `set()` creates an empty set.
- `{}` creates an empty dictionary.


## 4. Accessing Set Items Using a For Loop

Sets do not support indexing because they are unordered.

However, we can access their elements using a `for` loop.

### Example

```python
info = {"Carla", 19, False, 5.9}

for item in info:
    print(item)
```

**Output:**

```text
Carla
19
False
5.9
```

The output order may vary because sets are unordered.

### Check if an Item Exists

We can use the `in` keyword to check whether an item exists in a set.

```python
info = {"Carla", 19, False, 5.9}

if "Carla" in info:
    print("Carla is present")
else:
    print("Carla is absent")
```

**Output:**

```text
Carla is present
```

# 5. Set Methods in Python

## A. Union and Update

### 1. union()

The `union()` method combines two sets and returns a new set containing all unique elements.

**Example:**

```python
s1 = {1, 2, 5, 6}
s2 = {3, 6, 7}

print(s1.union(s2))
print(s1, s2)
```

**Output:**

```text
{1, 2, 3, 5, 6, 7}
{1, 2, 5, 6} {3, 6, 7}
```

The original sets remain unchanged.

### 2. update()

The `update()` method combines two sets and modifies the original set.

**Example:**

```python
s1 = {1, 2, 5, 6}
s2 = {3, 6, 7}

s1.update(s2)

print(s1)
```

**Output:**

```text
{1, 2, 3, 5, 6, 7}
```

**Difference:**

- `union()` returns a new set.
- `update()` modifies the original set.

## B. Intersection and Intersection Update

### 1. intersection()

The `intersection()` method returns the common elements between two sets.

**Example:**

```python
cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Tokyo", "Seoul", "Kabul", "Madrid"}

cities3 = cities.intersection(cities2)

print(cities3)
```

**Output:**

```text
{'Tokyo', 'Madrid'}
```

Tokyo and Madrid are common in both sets.

### 2. intersection_update()

The `intersection_update()` method keeps only the common elements and modifies the original set.

**Example:**

```python
cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Tokyo", "Seoul", "Kabul", "Madrid"}

cities.intersection_update(cities2)

print(cities)
```

**Output:**

```text
{'Tokyo', 'Madrid'}
```

**Difference:**

- `intersection()` returns a new set.
- `intersection_update()` modifies the original set.

## C. Symmetric Difference

The `symmetric_difference()` method returns elements that are present in either set but not in both sets.

In simple words, it returns all non-common elements.

### 1. symmetric_difference()

**Example:**

```python
cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Tokyo", "Seoul", "Kabul", "Madrid"}

cities3 = cities.symmetric_difference(cities2)

print(cities3)
```

**Output:**

```text
{'Berlin', 'Delhi', 'Seoul', 'Kabul'}
```

Tokyo and Madrid are common elements, so they are excluded.

### 2. symmetric_difference_update()

This method performs the same operation but modifies the original set.

**Example:**

```python
cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Tokyo", "Seoul", "Kabul", "Madrid"}

cities.symmetric_difference_update(cities2)

print(cities)
```

**Output:**

```text
{'Berlin', 'Delhi', 'Seoul', 'Kabul'}
```

**Difference:**

- `symmetric_difference()` returns a new set.
- `symmetric_difference_update()` modifies the original set.

## D. Difference and Difference Update

### 1. difference()

The `difference()` method returns elements that are present in the first set but not in the second set.

**Example:**

```python
s1 = {1, 2, 4, 6}
s2 = {3, 4, 6, 5}

s3 = s1.difference(s2)

print(s3)
```

**Output:**

```text
{1, 2}
```

Only the elements that exist in `s1` but not in `s2` are returned.

**Important:** Difference is directional.

```python
s1.difference(s2)
```

and

```python
s2.difference(s1)
```

can produce different results.

### 2. difference_update()

The `difference_update()` method removes all common elements from the original set.

**Example:**

```python
s1 = {1, 2, 4, 6}
s2 = {3, 4, 6, 5}

s1.difference_update(s2)

print(s1)
```

**Output:**

```text
{1, 2}
```

**Difference:**

- `difference()` returns a new set.
- `difference_update()` modifies the original set.

## E. isdisjoint()

The `isdisjoint()` method checks whether two sets have any common elements.

- Returns `True` if there are no common elements.
- Returns `False` if common elements exist.

**Example:**

```python
cities = {"Tokyo", "Madrid", "Berlin"}
cities2 = {"Seoul", "Kabul", "Delhi"}

print(cities.isdisjoint(cities2))
```

**Output:**

```text
True
```

There are no common elements between these two sets.

## F. issuperset()

The `issuperset()` method checks whether all elements of another set are present in the original set.

**Example:**

```python
cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Tokyo", "Madrid"}

print(cities.issuperset(cities2))
```

**Output:**

```text
True
```

All elements of `cities2` are present in `cities`.

## G. issubset()

The `issubset()` method checks whether all elements of one set are present in another set.

**Example:**

```python
cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Tokyo", "Madrid"}

print(cities2.issubset(cities))
```

**Output:**

```text
True
```

All elements of `cities2` are present in `cities`.

## H. add()

The `add()` method adds a single element to a set.

**Example:**

```python
cities = {"Tokyo", "Madrid"}

cities.add("Helsinki")

print(cities)
```

**Output:**

```text
{'Tokyo', 'Madrid', 'Helsinki'}
```

## I. remove() and discard()

Both methods are used to remove elements from a set.

### 1. remove()

The `remove()` method removes a specified element from a set.

If the element does not exist, Python raises a `KeyError`.

**Example:**

```python
cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}

cities.remove("Tokyo")

print(cities)
```

**Output:**

```text
{'Madrid', 'Berlin', 'Delhi'}
```

If we try to remove an element that does not exist:

```python
cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}

cities.remove("Seoul")

print(cities)
```

**Output:**

```text
KeyError: 'Seoul'
```

### 2. discard()

The `discard()` method also removes an element from a set.

However, if the element does not exist, it does not raise an error.

**Example:**

```python
cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}

cities.discard("Tokyo2")

print(cities)
```

**Output:**

```text
{'Tokyo', 'Madrid', 'Berlin', 'Delhi'}
```

**Difference:**

| remove() | discard() |
|---|---|
| Removes an element | Removes an element |
| Raises KeyError if element is absent | Does not raise an error if element is absent |

## J. pop()

The `pop()` method removes an arbitrary element from a set and returns the removed element.

Since sets are unordered, we cannot predict which element will be removed.

**Example:**

```python
cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}

item = cities.pop()

print(cities)
print(item)
```

**Possible Output:**

```text
{'Tokyo', 'Delhi', 'Berlin'}
Madrid
```

The removed element is stored in the `item` variable.

## K. del Keyword

`del` is a Python keyword, not a set method.

It deletes the entire set variable.

**Example:**

```python
cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}

del cities

print(cities)
```

**Output:**

```text
NameError: name 'cities' is not defined
```

The variable no longer exists after using `del`.

## L. clear()

The `clear()` method removes all elements from a set but keeps the set variable.

**Example:**

```python
cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}

cities.clear()

print(cities)
```

**Output:**

```text
set()
```

**Difference:**

- `del`: Deletes the entire variable.
- `clear()`: Removes all elements but keeps the empty set.

# 6. Quick Revision – Set Methods

| Method | Description |
|---|---|
| `union()` | Combines two sets and returns a new set |
| `update()` | Combines sets and modifies the original set |
| `intersection()` | Returns common elements |
| `intersection_update()` | Keeps common elements in the original set |
| `symmetric_difference()` | Returns non-common elements |
| `symmetric_difference_update()` | Updates the original set with non-common elements |
| `difference()` | Returns elements present only in the first set |
| `difference_update()` | Removes common elements from the original set |
| `isdisjoint()` | Checks whether two sets have no common elements |
| `issuperset()` | Checks the superset relationship |
| `issubset()` | Checks the subset relationship |
| `add()` | Adds one element |
| `remove()` | Removes an element; raises an error if absent |
| `discard()` | Removes an element without raising an error if absent |
| `pop()` | Removes and returns an arbitrary element |
| `clear()` | Removes all elements |
| `del` | Deletes the set variable |
| `in` | Checks whether an element exists in a set |

# 7. Key Learnings

1. Recursion is when a function calls itself.
2. A base condition is necessary to stop recursion.
3. Factorial can be calculated using recursion.
4. Fibonacci numbers are calculated by adding the previous two numbers.
5. Sets do not allow duplicate elements.
6. Sets are unordered and do not support indexing.
7. Sets can contain different data types.
8. Use `set()` to create an empty set.
9. Use `{}` to create an empty dictionary.
10. Use `in` to check whether an element exists in a set.
11. `remove()` raises an error if the element does not exist, whereas `discard()` does not.
12. `pop()` removes an arbitrary element from a set.

