# Python Day 12 – Dictionaries and Else with Loops

# 1. What is a Dictionary?

A Python dictionary is a collection that stores data in the form of key-value pairs.

Each key is associated with a corresponding value.

**Example:**

In a normal dictionary:
- Key = Word
- Value = Meaning of the word

**Syntax:**

```python
dictionary_name = {"key1": "value1", "key2": "value2"}
```

**Example 1:**

```python
dic = {"Harry": "Human being", "Spoon": "Object"}

print(dic["Harry"])
```

**Output:**

```text
Human being
```

**Example 2:**

```python
dic = {344: "Harry", 567: "Shubham", 678: "Zakir"}

print(dic[567])
```

**Output:**

```text
Shubham
```

**Important Points:**

- Dictionaries are defined using curly brackets `{}`.
- Data is stored in key-value pairs.
- Keys are used to access their corresponding values.
- A dictionary's main purpose is to create a mapping between keys and values.

# 2. Ordered Dictionaries

From Python 3.7 onwards, dictionaries maintain insertion order.

This means items appear in the same order in which they were inserted into the dictionary.

**Example:**

```python
info = {"name": "Karan", "age": 19, "eligible": True}

print(info)
```

**Output:**

```text
{'name': 'Karan', 'age': 19, 'eligible': True}
```

**Important:**

- Python dictionaries maintain insertion order.
- Items are displayed in the same order in which they were inserted.
- Dictionaries are not automatically sorted.

# 3. Accessing Dictionary Items

There are multiple ways to access dictionary items.

## Method 1: Using Square Brackets []

We can access a value by providing its corresponding key.

**Example:**

```python
info = {"name": "Karan", "age": 19, "eligible": True}

print(info["name"])
```

**Output:**

```text
Karan
```

## Method 2: Using get()

The `get()` method is used to access a value using its key.

**Example:**

```python
print(info.get("name"))
```

**Output:**

```text
Karan
```

**Important Difference:**

If a key does not exist:

Using square brackets:

```python
print(info["name2"])
```

**Output:**

```text
KeyError: 'name2'
```

Using get():

```python
print(info.get("name2"))
```

**Output:**

```text
None
```

The `get()` method returns `None` if the specified key is not found, unless a default value is provided.

# 4. Accessing Multiple Values

## A. keys() Method

The `keys()` method returns all keys present in a dictionary.

**Example:**

```python
info = {"name": "Karan", "age": 19, "eligible": True}

print(info.keys())
```

**Output:**

```text
dict_keys(['name', 'age', 'eligible'])
```

## B. values() Method

The `values()` method returns all values present in a dictionary.

**Example:**

```python
print(info.values())
```

**Output:**

```text
dict_values(['Karan', 19, True])
```

## C. Iterating Through a Dictionary

We can use a `for` loop to access dictionary keys and their corresponding values.

**Example:**

```python
for key in info.keys():
    print(info[key])
```

**Output:**

```text
Karan
19
True
```

Here:
- `key` stores each dictionary key.
- `info[key]` accesses the corresponding value.

## D. Using f-Strings

We can use f-strings to display dictionary keys and their corresponding values.

**Example:**

```python
for key in info.keys():
    print(f"The value corresponding to the key {key} is {info[key]}")
```

**Output:**

```text
The value corresponding to the key name is Karan
The value corresponding to the key age is 19
The value corresponding to the key eligible is True
```

# 5. Accessing Key-Value Pairs Using items()

The `items()` method returns all dictionary key-value pairs.

**Example:**

```python
print(info.items())
```

**Output:**

```text
dict_items([('name', 'Karan'), ('age', 19), ('eligible', True)])
```

## Tuple Unpacking

We can directly access keys and values using a `for` loop with the `items()` method.

**Example:**

```python
for key, value in info.items():
    print(f"The value corresponding to the key {key} is {value}")
```

**Output:**

```text
The value corresponding to the key name is Karan
The value corresponding to the key age is 19
The value corresponding to the key eligible is True
```

This technique is called Tuple Unpacking.

## Dictionary Methods

Dictionary provides several built-in methods for manipulating dictionary data.

# 1. update() Method

The `update()` method is used to update an existing dictionary.

It can:
- Add new key-value pairs.
- Update the value of an existing key.

**Example 1: Updating One Dictionary Using Another**

```python
ep1 = {122: 45, 123: 89, 567: 69, 670: 69}
ep2 = {222: 67, 566: 90}

ep1.update(ep2)

print(ep1)
```

**Output:**

```text
{122: 45, 123: 89, 567: 69, 670: 69, 222: 67, 566: 90}
```

Here, all key-value pairs from `ep2` are added to `ep1`.

**Example 2: Updating an Existing Value**

```python
info = {"name": "Karan", "age": 19, "eligible": True}

info.update({"age": 20})
info.update({"DOB": 2003})

print(info)
```

**Output:**

```text
{'name': 'Karan', 'age': 20, 'eligible': True, 'DOB': 2003}
```

Here:
- The existing age value is updated from 19 to 20.
- A new key-value pair `DOB: 2003` is added.

# 2. clear() Method

The `clear()` method removes all key-value pairs from a dictionary.

It makes the dictionary empty but does not delete the dictionary variable.

**Example:**

```python
info = {"name": "Karan", "age": 19, "eligible": True}

info.clear()

print(info)
```

**Output:**

```text
{}
```

# 3. Creating an Empty Dictionary

An empty dictionary can be created using curly brackets.

**Example:**

```python
emp = {}

print(emp)
```

**Output:**

```text
{}
```

# 4. pop() Method

The `pop()` method removes a specific key-value pair from a dictionary.

We need to provide the key as an argument.

**Example:**

```python
ep1 = {122: 45, 123: 89, 567: 69, 670: 69}

ep1.pop(122)

print(ep1)
```

**Output:**

```text
{123: 89, 567: 69, 670: 69}
```

Here:
- Key `122` is removed.
- Its corresponding value `45` is also removed.

# 5. popitem() Method

The `popitem()` method removes the last inserted key-value pair from a dictionary.

**Example:**

```python
info = {"name": "Karan", "age": 19, "eligible": True, "DOB": 2003}

info.popitem()

print(info)
```

**Output:**

```text
{'name': 'Karan', 'age': 19, 'eligible': True}
```

Here, the last inserted key-value pair `DOB: 2003` is removed.

# 6. del Keyword

The `del` keyword can be used to delete a specific dictionary item or the entire dictionary.

## A. Deleting a Specific Key

**Example:**

```python
info = {"name": "Karan", "age": 19, "DOB": 2003}

del info["age"]

print(info)
```

**Output:**

```text
{'name': 'Karan', 'DOB': 2003}
```

Here, only the `age` key-value pair is deleted.

## B. Deleting the Entire Dictionary

**Example:**

```python
info = {"name": "Karan", "age": 19}

del info

print(info)
```

**Output:**

```text
NameError: name 'info' is not defined
```

Here, the entire dictionary variable is deleted.

**Important: KeyError Example**

Dictionary keys can have different data types.

```python
ep1 = {122: 45, 123: 89}

del ep1["122"]
```

**Output:**

```text
KeyError: '122'
```

Why?

Because the dictionary key is an integer `122`, but we are trying to access it using a string `"122"`.

Correct way:

```python
del ep1[122]
```

## Else with For Loop and While Loop

# 1. Else with For Loop

In Python, the `else` keyword can be used with `for` loops as well as `if` statements.

The `else` block executes after all iterations of the loop are completed normally.

**Syntax:**

```python
for counter in sequence:
    # Statements inside for loop

else:
    # Statements inside else block
```

**Example 1:**

```python
for i in range(5):
    print(i)

else:
    print("Sorry no i")
```

**Output:**

```text
0
1
2
3
4
Sorry no i
```

Here:
- `range(5)` generates values from 0 to 4.
- All iterations are completed.
- The loop terminates normally.
- The `else` block executes.

# 2. Empty List with For Loop

If a `for` loop receives an empty list, its body will not execute.

However, the `else` block will execute because the loop completes normally.

**Example:**

```python
for i in []:
    print(i)

else:
    print("Sorry no i")
```

**Output:**

```text
Sorry no i
```

# 3. Break with Else

This is an important concept and can be asked in interviews.

If a loop terminates using the `break` statement, its `else` block will not execute.

**Example:**

```python
for i in range(6):
    print(i)

    if i == 4:
        break

else:
    print("Sorry no i")
```

**Output:**

```text
0
1
2
3
4
```

**Explanation:**

- The loop starts from 0.
- When `i` becomes 4, the condition becomes True.
- The `break` statement terminates the loop.
- The loop does not complete normally.
- Therefore, the `else` block is skipped.

**Important Rule:**

The `else` block executes only when the loop completes normally without being terminated by `break`.

# 4. Else with While Loop

The same concept also works with `while` loops.

**Example:**

```python
i = 0

while i < 7:
    print(i)
    i = i + 1

else:
    print("Sorry no i")
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
Sorry no i
```

**Explanation:**

- Initially, `i = 0`.
- The loop runs while `i < 7`.
- The value of `i` increases by 1 in every iteration.
- When `i` becomes 7, the condition becomes False.
- The loop terminates normally.
- The `else` block executes.

# 5. While Loop with Break

We can also use `break` with a `while` loop.

**Example:**

```python
i = 0

while i < 7:
    print(i)
    i = i + 1

    if i == 4:
        break

else:
    print("Sorry no i")
```

**Output:**

```text
0
1
2
3
```

Here, the loop terminates using `break`, so the `else` block does not execute.

# 6. Complete For Loop Example

**Example:**

```python
for x in range(5):
    print("iteration no {} in for loop".format(x + 1))

else:
    print("else block in loop")

print("Out of loop")
```

**Output:**

```text
iteration no 1 in for loop
iteration no 2 in for loop
iteration no 3 in for loop
iteration no 4 in for loop
iteration no 5 in for loop
else block in loop
Out of loop
```

**Explanation:**

1. The `for` loop executes five iterations.
2. After all iterations are completed, the `else` block executes.
3. Finally, the statement outside the loop executes.

# Quick Revision

| Concept | Description |
|---|---|
| Dictionary | Stores data in key-value pairs |
| `{}` | Creates a dictionary |
| `dict[key]` | Accesses a value using its key |
| `get()` | Safely accesses a value |
| `keys()` | Returns all dictionary keys |
| `values()` | Returns all dictionary values |
| `items()` | Returns key-value pairs |
| `update()` | Adds or updates dictionary items |
| `clear()` | Removes all dictionary items |
| `pop()` | Removes a specified key-value pair |
| `popitem()` | Removes the last inserted pair |
| `del` | Deletes a dictionary item or variable |
| `for...else` | Executes else after normal loop completion |
| `while...else` | Same else behavior with while loops |
| `break` | Terminates the loop and skips else |
| `continue` | Skips the current iteration |

# Key Learnings

1. A Python dictionary stores data in key-value pairs.
2. Dictionaries are defined using curly brackets `{}`.
3. Python 3.7 onwards, dictionaries maintain insertion order.
4. Dictionary values can be accessed using square brackets `[]` or the `get()` method.
5. The `keys()`, `values()` and `items()` methods help access dictionary data.
6. Tuple unpacking allows us to access keys and values separately.
7. The `update()` method adds new key-value pairs or updates existing values.
8. The `clear()` method removes all items from a dictionary.
9. The `pop()` method removes a specific key-value pair.
10. The `popitem()` method removes the last inserted key-value pair.
11. The `del` keyword deletes a specific item or the entire dictionary.
12. Both `for` and `while` loops support the `else` clause.
13. The loop's `else` block executes when the loop completes normally.
14. The `else` block does not execute when the loop terminates using `break`.
15. The `continue` statement does not prevent the loop's `else` block from executing if the loop completes normally.
