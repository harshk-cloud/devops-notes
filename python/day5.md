
# Day 5 - Python Strings (Indexing, Slicing and String Methods)

## 1. Single and Double Quotes

In Python, strings can be defined using both single quotes (' ') and double quotes (" ").

Meaning: Both types of quotes are used to store text/string values.

Example:

```python
name = "Harry"
friend = 'Lovish'

print(name)
print(friend)
```

Output:

```text
Harry
Lovish
```

## 2. Escape Characters in Strings

Sometimes we need to use quotes inside a string itself. In such situations, we use an escape character (\).

Example:

```python
apple = "He said, \"I want to eat an apple.\""

print(apple)
```

Output:

```text
He said, "I want to eat an apple."
```

## 3. Multiline Strings

In Python, triple single quotes (''' ''') or triple double quotes (""" """) are used to store text spanning multiple lines.

Example:

```python
message = """He said,
Hi Harry,
I want to eat an apple."""

print(message)
```

Output:

```text
He said,
Hi Harry,
I want to eat an apple.
```

## 4. Accessing Characters of a String (Indexing)

Meaning: Every character inside a string has a position, which is called an index.

In Python, indexing starts from zero (0).

Example:

```python
name = "Harry"

print(name[0])
print(name[1])
print(name[2])
print(name[3])
print(name[4])
```

Output:

```text
H
a
r
r
y
```

### 4.1 Positive Indexing

In positive indexing, characters are accessed from left to right.

Example:

```python
name = "Harry"

print(name[0])  # H
print(name[1])  # a
print(name[3])  # r
```

Index Table:

| Character | H | a | r | r | y |
|-----------|---|---|---|---|---|
| Index     | 0 | 1 | 2 | 3 | 4 |

### 4.2 Negative Indexing

In negative indexing, characters are accessed from right to left.

Example:

```python
name = "Harry"

print(name[-1])  # y
print(name[-2])  # r
print(name[-3])  # r
print(name[-4])  # a
print(name[-5])  # H
```

Index Table:

| Character | H | a | r | r | y |
|-----------|---|---|---|---|---|
| Positive  | 0 | 1 | 2 | 3 | 4 |
| Negative  | -5 | -4 | -3 | -2 | -1 |

Important: If you try to access an index outside the available index range of the string, an IndexError will occur.

## 5. Looping Through a String

Meaning: We can use a for loop to access every character of a string one by one.

Example:

```python
name = "Harry"

for character in name:
    print(character)
```

Output:

```text
H
a
r
r
y
```

Explanation:

- The for loop iterates through the characters of the string.
- character is a temporary variable.
- In every iteration, it receives one character.
- print() displays that character in the output.

### 5.1 Finding Length of a String

In Python, the len() function is used to count the total number of characters in a string.

Example:

```python
fruit = "Mango"

print(len(fruit))
```

Output:

```text
5
```

Important: Spaces, commas, and special characters are also counted in the length of a string.

## 6. String Slicing

Meaning: String slicing means extracting a particular portion or specific characters from a string.

### 6.1 Basic Slicing

Syntax:

```python
string[start:end]
```

- Start: The index from which characters are to be taken.
- End: The index up to which characters are to be taken.
- The start index is included.
- The end index is excluded.

Example:

```python
fruit = "Mango"

print(fruit[0:3])
```

Output:

```text
Man
```

Explanation:

- Index 0 = M
- Index 1 = a
- Index 2 = n
- Index 3 = g (excluded)

### 6.2 Default Start and End Index

If we do not specify the start or end index, Python automatically considers the default value.

Example:

```python
fruit = "Mango"

print(fruit[:4])
print(fruit[2:])
print(fruit[:])
```

Output:

```text
Mang
ngo
Mango
```

Explanation:

- fruit[:4] - The start index is automatically 0.
- fruit[2:] - Characters are extracted until the end of the string.
- fruit[:] - Returns the entire string.

### 6.3 Negative Slicing

String slicing can also be performed using negative indexing.

Example:

```python
fruit = "Mango"

print(fruit[-3:-1])
```

Output:

```text
ng
```

Explanation:

- -3 = n
- -2 = g
- -1 = o (excluded)

Important: In slicing, the end index is always excluded.

## 7. String Immutability

Meaning: Strings in Python are immutable. This means that once a string is created, its existing characters cannot be modified directly.

Example:

```python
a = "Harry"

a[0] = "B"
```

Output:

```text
TypeError
```

Correct Method:

```python
a = "Harry"

a = "Barry"

print(a)
```

Output:

```text
Barry
```

Important Points:

- Strings are immutable.
- An existing string cannot be modified directly.
- String methods generally return a new string.
- The original string does not automatically change.

# 8. String Methods

Python provides multiple built-in methods for working with strings.

With the help of string methods, we can:

- Convert strings to uppercase and lowercase.
- Remove extra spaces.
- Replace characters.
- Split strings.
- Check characters.

## 8.1 upper()

Meaning: Converts all characters of a string to uppercase.

Example:

```python
a = "Harry"

print(a.upper())
print(a)
```

Output:

```text
HARRY
Harry
```

Important: upper() does not modify the original string.

## 8.2 lower()

Meaning: Converts all characters of a string to lowercase.

Example:

```python
a = "HARRY"

print(a.lower())
```

Output:

```text
harry
```

## 8.3 strip()

Meaning: Removes unwanted whitespace from the beginning and end of a string.

Example:

```python
a = "  Silver Spoon  "

print(a.strip())
```

Output:

```text
Silver Spoon
```

## 8.4 lstrip()

Meaning: Removes whitespace from the left side or beginning of a string.

Example:

```python
a = "  Silver Spoon  "

print(a.lstrip())
```

Output:

```text
Silver Spoon  
```

## 8.5 rstrip()

Meaning: Removes whitespace from the right side or end of a string.

Example:

```python
a = "  Silver Spoon  "

print(a.rstrip())
```

Output:

```text
  Silver Spoon
```

## 8.6 replace()

Meaning: Replaces existing text inside a string with another text.

Syntax:

```python
string.replace(old, new)
```

Example:

```python
a = "Silver Spoon"

print(a.replace("S", "M"))
```

Output:

```text
Milver Mpoon
```

## 8.7 split()

Meaning: Divides a string into multiple parts based on a specified separator and returns a list.

Example:

```python
a = "Silver Spoon"

print(a.split(" "))
```

Output:

```text
['Silver', 'Spoon']
```

Important: If no separator is specified, the string is split based on whitespace by default.

# 9. Formatting String Methods

## 9.1 capitalize()

Meaning: Converts the first character of a string to uppercase and the remaining characters to lowercase.

Example:

```python
a = "INTRODUCTION TO PYTHON"

print(a.capitalize())
```

Output:

```text
Introduction to python
```

## 9.2 center()

Meaning: Center-aligns a string within a specified width.

Example:

```python
a = "Welcome"

print(a.center(20))
```

Output:

```text
       Welcome
```

We can also use a custom character:

```python
a = "Harry"

print(a.center(20, "*"))
```

## 9.3 title()

Meaning: Converts the first character of every word in a string to uppercase.

Example:

```python
a = "welcome to python"

print(a.title())
```

Output:

```text
Welcome To Python
```

## 9.4 swapcase()

Meaning: Converts uppercase characters to lowercase and lowercase characters to uppercase.

Example:

```python
a = "Python Is Awesome"

print(a.swapcase())
```

Output:

```text
pYTHON iS aWESOME
```

# 10. Counting and Searching Methods

## 10.1 count()

Meaning: Counts the total occurrences of a specified character or substring in a string.

Example:

```python
a = "Abracadabra"

print(a.count("a"))
```

Output:

```text
4
```

## 10.2 endswith()

Meaning: Checks whether a string ends with a specified character or substring.

Example:

```python
a = "Welcome to Python"

print(a.endswith("Python"))
```

Output:

```text
True
```

## 10.3 startswith()

Meaning: Checks whether a string starts with a specified character or substring.

Example:

```python
a = "Python is awesome"

print(a.startswith("Python"))
```

Output:

```text
True
```

## 10.4 find()

Meaning: Returns the index of the first occurrence of a specified substring in a string.

If the substring is not found, it returns -1.

Example:

```python
a = "He is a good boy"

print(a.find("is"))
```

Output:

```text
3
```

Important: find() does not raise an error when the substring is not found. It returns -1.

## 10.5 index()

Meaning: Returns the index of the first occurrence of a specified substring in a string.

Example:

```python
a = "Welcome to Python"

print(a.index("is"))
```

Output:

```text
ValueError
```

Important Difference:

| Method | Substring Not Found |
|--------|---------------------|
| find() | Returns -1 |
| index() | Raises ValueError |

# 11. String Checking Methods

These methods check what type of characters are present in a string. Their return value is either True or False.

## 11.1 isalnum()

Meaning: Checks whether the string contains only alphabets and numbers.

Example:

```python
a = "Welcome123"

print(a.isalnum())
```

Output:

```text
True
```

If special characters or spaces are present, it returns False.

## 11.2 isalpha()

Meaning: Checks whether the string contains only alphabets.

Example:

```python
a = "Welcome"

print(a.isalpha())
```

Output:

```text
True
```

## 11.3 islower()

Meaning: Checks whether all cased alphabetic characters in the string are lowercase.

Example:

```python
a = "welcome"

print(a.islower())
```

Output:

```text
True
```

## 11.4 isupper()

Meaning: Checks whether all cased alphabetic characters in the string are uppercase.

Example:

```python
a = "HELLO"

print(a.isupper())
```

Output:

```text
True
```

## 11.5 isprintable()

Meaning: Checks whether all characters in a string are printable.

Example:

```python
a = "Hello World"

print(a.isprintable())
```

Output:

```text
True
```

If non-printable characters such as a newline are present, it returns False.

Example:

```python
a = "Hello\nWorld"

print(a.isprintable())
```

Output:

```text
False
```

## 11.6 isspace()

Meaning: Checks whether the string contains only whitespace characters.

Example:

```python
a = "   "

print(a.isspace())
```

Output:

```text
True
```

## 11.7 istitle()

Meaning: Checks whether the string is in title case.

Example:

```python
a = "World Health Organization"

print(a.istitle())
```

Output:

```text
True
```

# 12. Important Differences to Remember

| Method | Purpose |
|--------|---------|
| upper() | Converts to uppercase |
| lower() | Converts to lowercase |
| capitalize() | First character uppercase |
| title() | Every word starts with uppercase |
| swapcase() | Swaps uppercase and lowercase |
| strip() | Removes whitespace from both sides |
| lstrip() | Removes left-side whitespace |
| rstrip() | Removes right-side whitespace |
| replace() | Replaces specified text |
| split() | Splits string into a list |
| count() | Counts occurrences |
| find() | Returns index or -1 |
| index() | Returns index or raises ValueError |
| startswith() | Checks starting text |
| endswith() | Checks ending text |
| isalnum() | Checks alphabets and numbers |
| isalpha() | Checks alphabets only |
| islower() | Checks lowercase |
| isupper() | Checks uppercase |
| isprintable() | Checks printable characters |
| isspace() | Checks whitespace only |
| istitle() | Checks title case |

# 13. Key Learnings

- Python strings can be defined using single or double quotes.
- Escape characters help us use special characters inside strings.
- Triple quotes are used for multiline strings.
- Python indexing starts from 0.
- Negative indexing starts from -1.
- A for loop can iterate through every character of a string.
- len() returns the total number of characters.
- String slicing extracts a specific portion of a string.
- Slicing follows the rule: start included, end excluded.
- Python strings are immutable.
- String methods generally return new strings when they perform transformations.
- Checking methods return Boolean values (True or False).
- find() returns -1 when the substring is not found.
- index() raises ValueError when the substring is not found.
