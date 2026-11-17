
# Day 5 - Python Strings (Indexing, Slicing and String Methods)

## 1. Single and Double Quotes

Python mein strings ko single quotes (' ') ya double quotes (" ") dono se define kar sakte hain.

Meaning: Dono quotes ka use text/string store karne ke liye hota hai.

Example:

```
name = "Harry"
friend = 'Lovish'

print(name)
print(friend)
```

Output:
```
Harry
Lovish
```

## 2. Escape Characters in Strings

Kabhi-kabhi string ke andar hi quotes use karne hote hain. Aisi situation mein escape character (\) use karte hain.

Example:

```
apple = "He said, \"I want to eat an apple.\""

print(apple)
```

Output:
```
He said, "I want to eat an apple."
```

## 3. Multiline Strings

Python mein multiple lines ka text store karne ke liye triple single quotes (''' ''') ya triple double quotes (""" """) use karte hain.

Example:

```
message = """He said,
Hi Harry,
I want to eat an apple."""

print(message)
```

Output:
```
He said,
Hi Harry,
I want to eat an apple.
```

## 4. Accessing Characters of a String (Indexing)

Meaning: String ke andar har character ki ek position hoti hai, jise index kehte hain.

Python mein indexing zero (0) se start hoti hai.

Example:

```
name = "Harry"

print(name[0])
print(name[1])
print(name[2])
print(name[3])
print(name[4])
```

Output:
```
H
a
r
r
y
```

### 4.1 Positive Indexing

Positive indexing mein characters ko left se right access karte hain.

Example:

```
name = "Harry"

print(name[0])  # H
print(name[1])  # a
print(name[3])  # r
```

Index Table:
```
| Character | H | a | r | r | y |
|-----------|---|---|---|---|---|
| Index     | 0 | 1 | 2 | 3 | 4 |
```
### 4.2 Negative Indexing

Negative indexing mein characters ko right se left access karte hain.

Example:

```
name = "Harry"

print(name[-1])  # y
print(name[-2])  # r
print(name[-3])  # r
print(name[-4])  # a
print(name[-5])  # H
```

Index Table:
```
| Character | H | a | r | r | y |
|-----------|---|---|---|---|---|
| Positive  | 0 | 1 | 2 | 3 | 4 |
| Negative  | -5 | -4 | -3 | -2 | -1 |
```
Important: Agar string ki available index range se bahar access karenge, toh IndexError aayega.

## 5. Looping Through a String

Meaning: String ke har character ko one by one access karne ke liye for loop use kar sakte hain.

Example:

```
name = "Harry"

for character in name:
    print(character)
```

Output:
```
H
a
r
r
y
```

Explanation:
- For loop string ke characters par iterate karta hai.
- Character ek temporary variable hai.
- Har iteration mein ek character receive hota hai.
- Print() us character ko output karta hai.

### 5.1 Finding Length of a String

Python mein len() function ka use string ke total characters count karne ke liye hota hai.

Example:

```
fruit = "Mango"

print(len(fruit))
```

Output:
```
5
```

Important: Spaces, commas aur special characters bhi string ki length mein count hote hain.

## 6. String Slicing

Meaning: String slicing ka matlab hai string ke kisi particular portion ya characters ko extract karna.

### 6.1 Basic Slicing

Syntax:

```
string[start:end]
```

- Start: Kis index se characters lene hain.
- End: Kis index tak characters lene hain.
- Start index included hota hai.
- End index excluded hota hai.

Example:

```
fruit = "Mango"

print(fruit[0:3])
```

Output:
```
Man
```

Explanation:
- Index 0 = M
- Index 1 = a
- Index 2 = n
- Index 3 = g (excluded)

### 6.2 Default Start and End Index

Agar start ya end index specify nahi karte, toh Python automatically default value consider karta hai.

Example:

```
fruit = "Mango"

print(fruit[:4])
print(fruit[2:])
print(fruit[:])
```

Output:
```
Mang
ngo
Mango
```

Explanation:
- fruit[:4] - Start index automatically 0 hota hai.
- fruit[2:] - String ke end tak characters extract hote hain.
- fruit[:] - Puri string return hoti hai.

### 6.3 Negative Slicing

Negative indexing ka use karke bhi string slicing kar sakte hain.

Example:

```
fruit = "Mango"

print(fruit[-3:-1])
```

Output:
```
ng
```

Explanation:
- -3 = n
- -2 = g
- -1 = o (excluded)

Important: Slicing mein end index hamesha excluded hota hai.

## 7. String Immutability

Meaning: Python mein strings immutable hoti hain. Iska matlab hai ki ek baar string create hone ke baad uske existing characters ko directly modify nahi kar sakte.

Example:

```
a = "Harry"

a[0] = "B"
```

Output:
```
TypeError
```

Correct Method:

```
a = "Harry"

a = "Barry"

print(a)
```

Output:
```
Barry
```

Important Points:
- Strings immutable hoti hain.
- Existing string ko directly modify nahi kar sakte.
- String methods generally ek new string return karte hain.
- Original string automatically change nahi hoti.

# 8. String Methods

Python mein strings ke saath kaam karne ke liye multiple built-in methods available hain.

String methods ki help se hum:
- Uppercase aur lowercase convert kar sakte hain.
- Extra spaces remove kar sakte hain.
- Characters replace kar sakte hain.
- Strings split kar sakte hain.
- Characters check kar sakte hain.

## 8.1 upper()

Meaning: String ke saare characters ko uppercase mein convert karta hai.

Example:

```
a = "Harry"

print(a.upper())
print(a)
```

Output:
```
HARRY
Harry
```

Important: upper() original string ko modify nahi karta.

## 8.2 lower()

Meaning: String ke saare characters ko lowercase mein convert karta hai.

Example:

```
a = "HARRY"

print(a.lower())
```

Output:
```
harry
```

## 8.3 strip()

Meaning: String ke starting aur ending se unwanted whitespace remove karta hai.

Example:

```
a = "  Silver Spoon  "

print(a.strip())
```

Output:
```
Silver Spoon
```

## 8.4 lstrip()

Meaning: String ke left side ya starting ke whitespace remove karta hai.

Example:

```
a = "  Silver Spoon  "

print(a.lstrip())
```

Output:
```
Silver Spoon  
```

## 8.5 rstrip()

Meaning: String ke right side ya ending ke whitespace remove karta hai.

Example:

```
a = "  Silver Spoon  "

print(a.rstrip())
```

Output:
```
  Silver Spoon
```

## 8.6 replace()

Meaning: String ke andar kisi existing text ko doosre text se replace karta hai.

Syntax:

```
string.replace(old, new)
```

Example:

```
a = "Silver Spoon"

print(a.replace("S", "M"))
```

Output:
```
Milver Mpoon
```

## 8.7 split()

Meaning: String ko specified separator ke basis par multiple parts mein divide karta hai aur list return karta hai.

Example:

```
a = "Silver Spoon"

print(a.split(" "))
```

Output:
```
['Silver', 'Spoon']
```

Important: Agar separator specify nahi karte, toh default whitespace ke basis par split hota hai.

# 9. Formatting String Methods

## 9.1 capitalize()

Meaning: String ke first character ko uppercase aur remaining characters ko lowercase karta hai.

Example:

```
a = "INTRODUCTION TO PYTHON"

print(a.capitalize())
```

Output:
```
Introduction to python
```

## 9.2 center()

Meaning: String ko specified width ke andar center align karta hai.

Example:

```
a = "Welcome"

print(a.center(20))
```

Output:
```
      Welcome
```

Custom character bhi use kar sakte hain:

```
a = "Harry"

print(a.center(20, "*"))
```

## 9.3 title()

Meaning: String ke har word ke first character ko uppercase karta hai.

Example:

```
a = "welcome to python"

print(a.title())
```

Output:
```
Welcome To Python
```

## 9.4 swapcase()

Meaning: String ke uppercase characters ko lowercase aur lowercase characters ko uppercase mein convert karta hai.

Example:

```
a = "Python Is Awesome"

print(a.swapcase())
```

Output:
```
pYTHON iS aWESOME
```

# 10. Counting and Searching Methods

## 10.1 count()

Meaning: String mein kisi specified character ya substring ki total occurrences count karta hai.

Example:

```
a = "Abracadabra"

print(a.count("a"))
```

Output:
```
4
```

## 10.2 endswith()

Meaning: Check karta hai ki string specified character ya substring ke saath end hoti hai ya nahi.

Example:

```
a = "Welcome to Python"

print(a.endswith("Python"))
```

Output:
```
True
```

## 10.3 startswith()

Meaning: Check karta hai ki string specified character ya substring se start hoti hai ya nahi.

Example:

```
a = "Python is awesome"

print(a.startswith("Python"))
```

Output:
```
True
```

## 10.4 find()

Meaning: String mein specified substring ki first occurrence ka index return karta hai.

Agar substring nahi milti, toh -1 return hota hai.

Example:

```
a = "He is a good boy"

print(a.find("is"))
```

Output:
```
3
```

Important: find() substring na milne par error nahi deta, -1 return karta hai.

## 10.5 index()

Meaning: String mein specified substring ki first occurrence ka index return karta hai.

Example:

```
a = "Welcome to Python"

print(a.index("is"))
```

Output:
```
ValueError
```

Important Difference:
```
| Method | Substring Not Found |
|--------|---------------------|
| find() | Returns -1 |
| index() | Raises ValueError |
```
# 11. String Checking Methods

Ye methods check karte hain ki string mein kis type ke characters present hain. Inka return value True ya False hota hai.

## 11.1 isalnum()

Meaning: Check karta hai ki string mein sirf alphabets aur numbers hain ya nahi.

Example:

```
a = "Welcome123"

print(a.isalnum())
```

Output:
```
True
```

Agar special characters ya spaces present honge, toh False return hoga.

## 11.2 isalpha()

Meaning: Check karta hai ki string mein sirf alphabets hain ya nahi.

Example:

```
a = "Welcome"

print(a.isalpha())
```

Output:
```
True
```

## 11.3 islower()

Meaning: Check karta hai ki string ke saare cased alphabetic characters lowercase hain ya nahi.

Example:

```
a = "welcome"

print(a.islower())
```

Output:
```
True
```

## 11.4 isupper()

Meaning: Check karta hai ki string ke saare cased alphabetic characters uppercase hain ya nahi.

Example:

```
a = "HELLO"

print(a.isupper())
```

Output:
```
True
```

## 11.5 isprintable()

Meaning: Check karta hai ki string ke saare characters printable hain ya nahi.

Example:

```
a = "Hello World"

print(a.isprintable())
```

Output:
```
True
```

Newline jaise non-printable characters hone par False return hota hai.

Example:

```
a = "Hello\nWorld"

print(a.isprintable())
```

Output:
```
False
```

## 11.6 isspace()

Meaning: Check karta hai ki string mein sirf whitespace characters hain ya nahi.

Example:

```
a = "   "

print(a.isspace())
```

Output:
```
True
```

## 11.7 istitle()

Meaning: Check karta hai ki string title case mein hai ya nahi.

Example:

```
a = "World Health Organization"

print(a.istitle())
```

Output:
```
True
```

# 12. Important Differences to Remember
```
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
```
# 13. Key Learnings

- Python strings can be defined using single or double quotes.
- Escape characters help us use special characters inside strings.
- Triple quotes are used for multiline strings.
- Python indexing starts from 0.
- Negative indexing starts from -1.
- for loop can iterate through every character of a string.
- len() returns the total number of characters.
- String slicing extracts a specific portion of a string.
- Slicing follows the rule: start included, end excluded.
- Python strings are immutable.
- String methods generally return new strings when they perform transformations.
- Checking methods return Boolean values (True or False).
- find() returns -1 when the substring is not found.
- index() raises ValueError when the substring is not found.
