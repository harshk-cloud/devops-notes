# Python - Functions and List Methods

## 1. Function Parameters vs Arguments

**Function:** Function ek reusable block of code hota hai jo kisi particular task ko perform karta hai.

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

**Parameters:** Function definition mein jo variables define karte hain, unhe parameters kehte hain.

**Arguments:** Function call karte waqt jo actual values provide karte hain, unhe arguments kehte hain.

Example:
- `a` and `b` are Parameters.
- `4` and `6` are Arguments.

## 2. Four Types of Function Arguments

Python mein function arguments ke different types hote hain.

1. Default Arguments
2. Keyword Arguments
3. Required Arguments
4. Variable-Length Arguments

### 2.1 Default Arguments

Jab function define karte waqt kisi parameter ko default value provide kar dete hain, use Default Argument kehte hain.

Agar function call karte waqt value provide nahi karte, toh default value use hoti hai.

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
- `average()` mein dono default values use hongi.
- `average(5)` mein `a=5` aur `b=1` hoga.
- `average(b=9)` mein `a=9` aur `b=9` hoga.

### 2.2 Keyword Arguments

Jab function call karte waqt parameter ka naam specify karke value provide karte hain, use Keyword Argument kehte hain.

Isme arguments ka order change kar sakte hain.

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

**Important:**
- Keyword arguments mein parameter names specify karte hain.
- Arguments ka order important nahi hota.
- Values correct parameter ko assign hoti hain.

### 2.3 Required Arguments

Jab function ke parameters ko value provide karna necessary hota hai, unhe Required Arguments kehte hain.

Agar required argument provide nahi karte, toh Python `TypeError` deta hai.

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

**Note:** Required parameters ko function call karte waqt value dena zaroori hai, jab tak unke liye default value define na ho.

### 2.4 Variable-Length Arguments (*args)

Jab humein nahi pata hota ki function ko kitne arguments milenge, tab Variable-Length Arguments use karte hain.

`*args` ki help se multiple positional arguments receive kar sakte hain.

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

**Important:**
- `*args` multiple positional arguments accept karta hai.
- Function ke andar `args` tuple ke form mein available hota hai.
- `for` loop ki help se values access kar sakte hain.

### 2.5 Arbitrary Keyword Arguments (**kwargs)

Jab humein multiple keyword arguments receive karne hote hain, tab `**kwargs` use karte hain.

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

**Important:**
- `**kwargs` multiple keyword arguments accept karta hai.
- Function ke andar ye dictionary ke form mein available hota hai.
- Values ko keys ki help se access kar sakte hain.

## 3. Return Statement

`return` statement ka use function se result wapas bhejne ke liye hota hai.

**Difference between print() and return:**

- `print()` result ko screen par display karta hai.
- `return` result ko function ke bahar bhejta hai, jise variable mein store ya further use kar sakte hain.

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

### Multiple Return Statements

Python function ek se zyada values bhi return kar sakta hai.

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

**Note:** Multiple values return karne par Python unhe tuple ke form mein return karta hai.


# 4. Introduction to Lists

List Python ka built-in data type hai jo multiple items ko ek single variable mein store karne ke liye use hota hai.

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

1. **Ordered Collection:** List elements ka order maintain karti hai.
2. **Multiple Items:** Ek list mein multiple values store kar sakte hain.
3. **Square Brackets:** List create karne ke liye `[]` use karte hain.
4. **Changeable (Mutable):** List ke elements ko change kar sakte hain.

## 4.2 Multiple Data Types in a List

Python list mein different data types ke elements store kar sakte hain.

**Example:**

```python
details = ["Abhijeet", 18, "EIBSCTI", 9.8]

print(details)
```

**Output:**
```text
['Abhijeet', 18, 'EIBSCTI', 9.8]
```

Ek list mein:
- String
- Integer
- Float
- Boolean

jaise different data types store kar sakte hain.

## 4.3 List Indexing

List ke har element ka ek index number hota hai.

Python mein indexing `0` se start hoti hai.

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

Python negative indexing bhi support karta hai.

- `-1` = Last element
- `-2` = Second last element
- `-3` = Third last element

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

Python mein `in` keyword ki help se check kar sakte hain ki koi element list mein present hai ya nahi.

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

Agar element list mein present hota hai toh `True`, otherwise `False` milta hai.

## 4.5 List Slicing

List slicing ka use list ke particular elements ko select karne ke liye hota hai.

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
- `jump_index` = Kitne index ke gap se elements select karne hain.

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

List Comprehension ki help se existing iterable se easily new list generate kar sakte hain.

Isme loop aur optional condition ka use hota hai.

**Syntax:**

```python
new_list = [expression for item in iterable if condition]
```

**List Comprehension ke Parts:**

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

### Example 2: Expression ka Use

```python
lst = [i*i for i in range(10)]

print(lst)
```

**Output:**
```text
[0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
```

Yahan `i*i` har number ka square calculate karta hai.

### Example 3: Condition ka Use

```python
lst = [i for i in range(10) if i % 2 == 0]

print(lst)
```

**Output:**
```text
[0, 2, 4, 6, 8]
```

Yahan condition check karti hai ki number even hai ya nahi.

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

List methods built-in methods hain jinki help se existing list ko modify, sort, reverse aur manipulate kar sakte hain.

## 5.1 append()

`append()` method list ke end mein ek new element add karta hai.

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

**Important:**
- Element list ke end mein add hota hai.
- Original list modify ho jaati hai.
- Ek call mein ek element append hota hai.

## 5.2 sort()

`sort()` method list ke elements ko ascending order mein arrange karta hai.

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

Agar descending order mein sort karna hai toh `reverse=True` parameter use karte hain.

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

**Important:**
- Default sorting ascending order mein hoti hai.
- `reverse=True` descending order mein sort karta hai.
- Original list update hoti hai.

## 5.3 reverse()

`reverse()` method list ke elements ka existing order reverse kar deta hai.

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

`reverse()` aur `sort(reverse=True)` same nahi hain.

- `reverse()` existing order ko ulta karta hai.
- `sort(reverse=True)` elements ko descending order mein sort karta hai.

## 5.4 index()

`index()` method list mein kisi element ki first occurrence ka index return karta hai.

**Example:**

```python
l = [11, 45, 1, 2, 4, 6]

print(l.index(1))
```

**Output:**
```text
2
```

**Explanation:**

List mein `1` index number `2` par present hai.

### Duplicate Elements

```python
l = [11, 45, 1, 2, 4, 6, 1, 1]

print(l.index(1))
```

**Output:**
```text
2
```

**Note:** Agar element multiple times present hai, toh `index()` first occurrence ka index return karta hai.

## 5.5 count()

`count()` method batata hai ki given element list mein kitni baar present hai.

**Example:**

```python
l = [11, 45, 1, 2, 4, 6, 1, 1]

print(l.count(1))
```

**Output:**
```text
3
```

Yahan `1` total 3 times present hai.

## 5.6 copy()

`copy()` method existing list ki separate copy create karta hai.

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

Agar hum aisa karte hain:

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

- `m = l` karne se new list create nahi hoti.
- `m` aur `l` same list ko refer karte hain.
- `m` mein change karne par original list `l` bhi change hoti hai.
- `m = l.copy()` separate list create karta hai.

Isliye independent list chahiye toh `copy()` use karna chahiye.

## 5.7 insert()

`insert()` method list mein given index par new element insert karta hai.

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
- `899` = Insert hone wala element.

899 index `1` par insert hua aur baaki elements right side shift ho gaye.

## 5.8 extend()

`extend()` method kisi existing list ke end mein doosri iterable ke elements add karta hai.

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

- `m` ke elements ko individually access karke `l` ke end mein add kiya jata hai.
- Original list `l` modify ho jaati hai.

## 5.9 Concatenating Two Lists

Agar do lists ko combine karke ek new list create karni hai, toh `+` operator use kar sakte hain.

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

**Important:**
- `+` operator dono lists ko concatenate karta hai.
- Ek new list create hoti hai.
- Original lists `l` aur `m` unchanged rehti hain.

---

# 6. Difference Between Important List Methods

| Method | Purpose |
|---|---|
| append() | End mein ek element add karta hai |
| sort() | Elements ko sort karta hai |
| reverse() | Existing order reverse karta hai |
| index() | First occurrence ka index deta hai |
| count() | Element ki occurrences count karta hai |
| copy() | Separate list copy create karta hai |
| insert() | Given index par element insert karta hai |
| extend() | Iterable ke elements end mein add karta hai |
| + operator | Do lists ko concatenate karta hai |

## 7. Important Differences

### append() vs extend()

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
- `append()` poori list ko ek single element ki tarah add karta hai.
- `extend()` doosri list ke individual elements add karta hai.


# 8. Key Learnings

1. Functions reusable blocks of code hote hain.
2. Parameters function definition mein define hote hain aur arguments function call mein pass hote hain.
3. Python mein Default, Keyword, Required aur Variable-Length Arguments hote hain.
4. `*args` multiple positional arguments receive karta hai.
5. `**kwargs` multiple keyword arguments receive karta hai.
6. `return` function se result wapas bhejta hai.
7. Python lists ordered aur mutable collections hain.
8. List indexing `0` se start hoti hai aur negative indexing bhi supported hai.
9. `in` keyword se list mein element ki presence check kar sakte hain.
10. List slicing se specific elements select kar sakte hain.
11. List comprehension ki help se concise way mein new lists create kar sakte hain.
12. `append()` ek element add karta hai, jabki `extend()` multiple elements add karta hai.
13. `sort()` list ko ascending ya descending order mein arrange karta hai.
14. `reverse()` existing order ko reverse karta hai.
15. `index()` first occurrence ka index return karta hai.
16. `count()` element ki total occurrences return karta hai.
17. `copy()` separate list create karta hai.
18. `insert()` given index par element add karta hai.
19. `+` operator se two lists concatenate kar sakte hain.

