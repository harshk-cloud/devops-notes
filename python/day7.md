# Day 7 - Match Case and Loops

## 1. Match Case

### What is Match Case?

Match Case is used to compare a variable's value with different patterns or cases.

It helps us execute specific code depending on the matching value.

### Syntax

```python
match variable:
    case value1:
        statement
    case value2:
        statement
    case _:
        statement
```

### Example 1: Basic Match Case

```python
x = 4

match x:
    case 0:
        print("x is zero")
    case 4:
        print("Case is 4")
    case _:
        print(x)
```

**Output:**
```text
Case is 4
```

### How Match Case Works

- Python checks the value of the variable.
- It compares the value with different cases.
- When a matching case is found, its code is executed.
- If no case matches, the default case (`case _`) is executed.

### Important: Default Case

`case _` works as a default or fallback case.

It executes when none of the previous cases match.

Unlike C and C++, Python's Match Case does not require a `break` statement after each case.

## 2. Match Case with If Conditions (Guards)

We can also use conditions inside Match Case.

This is useful when we want to check additional conditions along with a pattern.

### Example

```python
x = int(input("Enter the value of x: "))

match x:
    case 0:
        print("x is zero")
    case _ if x != 90:
        print(x, "is not 90")
    case _ if x != 80:
        print(x, "is not 80")
    case _:
        print(x)
```

**Important:**

- `case _ if condition` checks an additional condition.
- `!=` means not equal to.
- A matching case is selected according to the matching rules and order.

**Note:** In this example, if x is 90, the second case does not match, but the third case does because 90 is not equal to 80.

## 3. Loops

### What are Loops?

Loops are used to execute a group of statements repeatedly.

Suppose we want to print numbers from 1 to 5.

Without a loop:

```python
print(1)
print(2)
print(3)
print(4)
print(5)
```

If we need to print numbers 20,000 times, writing print statements individually would be inefficient.

Loops make this task easier by executing statements repeatedly.

### Types of Loops

Python has two main types of loops:

1. For Loop
2. While Loop


# 4. For Loop

### What is a For Loop?

A For Loop is used to access elements of an iterable object one by one.

### What is an Iterable Object?

An iterable object is an object whose elements can be accessed one by one.

Examples:

- Strings
- Lists
- Tuples
- Sets
- Dictionaries

### Syntax

```python
for variable in iterable:
    statement
```

**Explanation:**

- `for` starts the loop.
- `variable` stores the current element.
- `in` connects the variable with the iterable.
- `iterable` is the object whose elements we want to access.
- The statement executes for every iteration.

**Important:** We can choose the variable name according to our preference. It does not have to match the iterable's name.

## 5. For Loop with Strings

A For Loop can access every character of a string one by one.

### Example

```python
name = "Abhishek"

for i in name:
    print(i, end=",")
```

**Output:**

```text
A,b,h,i,s,h,e,k,
```

### Explanation

- Python takes the first character from the string.
- It stores that character in variable `i`.
- The print statement displays the character.
- This process continues until all characters are accessed.

### Understanding the end Parameter

Normally, `print()` moves to a new line after printing.

Using `end=","` changes this behaviour.

It prints a comma after each character instead of moving to a new line.

## 6. If Condition Inside For Loop

We can use an If Statement inside a For Loop to check conditions for individual elements.

### Example

```python
name = "Abhishek"

for i in name:
    print(i)
    if i == "b":
        print("This is something special")
```

**Output:**

```text
A
b
This is something special
h
i
s
h
e
k
```

### Explanation

- The For Loop accesses every character.
- The If Statement checks whether the current character is equal to `"b"`.
- When the condition becomes True, the additional print statement executes.

## 7. For Loop with Lists

A For Loop can also access list elements one by one.

### Example

```python
colors = ["Red", "Green", "Blue", "Yellow"]

for color in colors:
    print(color)
```

**Output:**

```text
Red
Green
Blue
Yellow
```

### Explanation

Python accesses every element of the list and stores it in the variable `color`.

The loop continues until all elements have been accessed.

## 8. Nested For Loop

A Nested For Loop means placing one For Loop inside another For Loop.

### Example

```python
colors = ["Red", "Green", "Blue", "Yellow"]

for color in colors:
    print(color)

    for i in color:
        print(i)
```

### Explanation

- The outer loop accesses each color from the list.
- The inner loop accesses each character of the current color.
- The inner loop completes all its iterations before the outer loop moves to the next color.

**Important:**

A Nested Loop is useful when we need to work with multiple levels of iterable elements.


# 9. Range() Function

### What is Range()?

The `range()` function generates a sequence of numbers.

It is commonly used with For Loops when we want to execute statements a specific number of times.

### Example 1: range(5)

```python
for k in range(5):
    print(k)
```

**Output:**

```text
0
1
2
3
4
```

**Important:** The stop value is excluded.

Therefore, `range(5)` generates numbers from 0 to 4.

## 10. Arguments of Range() Function

The `range()` function can accept a maximum of three arguments.

### Syntax

```python
range(start, stop, step)
```

### 1. Start

- Specifies where the sequence starts.
- If not provided, the default value is 0.

### 2. Stop

- Specifies where the sequence stops.
- The stop value is excluded.

### 3. Step

- Specifies how much the value increases or decreases in each iteration.
- Default value is 1.

### Example 1: range(5)

```python
for k in range(5):
    print(k)
```

**Output:**

```text
0
1
2
3
4
```

### Example 2: range(1, 9)

```python
for k in range(1, 9):
    print(k)
```

**Output:**

```text
1
2
3
4
5
6
7
8
```

### Example 3: range(1, 12, 3)

```python
for k in range(1, 12, 3):
    print(k)
```

**Output:**

```text
1
4
7
10
```

**Explanation:**

- Start = 1
- Stop = 12
- Step = 3

The value increases by 3 in every iteration.

### Example 4: Printing Numbers up to 20,000

```python
for k in range(1, 20001):
    print(k)
```

This prints numbers from 1 to 20,000.


# 11. While Loop

### What is a While Loop?

A While Loop executes statements repeatedly as long as its condition is True.

As soon as the condition becomes False, the loop terminates.

### Difference Between For Loop and While Loop

**For Loop:**

- Used to iterate over elements of an iterable object.
- Can also be used with a fixed range of numbers.
- Useful when we know what sequence or range we want to iterate over.

**While Loop:**

- Executes statements while a given condition remains True.
- Useful when repetition depends on a condition.

### Syntax

```python
while condition:
    statement
    statement
```

## 12. For Loop vs While Loop Example

### Using For Loop

```python
for i in range(3):
    print(i)
```

**Output:**

```text
0
1
2
```

### Using While Loop

```python
i = 0

while i < 3:
    print(i)
    i = i + 1
```

**Output:**

```text
0
1
2
```

Both programs produce the same output, but their execution methods are different.

## 13. Understanding While Loop Execution

Consider the following code:

```python
i = 0

while i < 3:
    print(i)
    i = i + 1

print("Done with the loop")
```

### Execution Table

| Iteration | i Value | Condition (i < 3) | Output |
|---|---|---|---|
| 1 | 0 | True | 0 |
| 2 | 1 | True | 1 |
| 3 | 2 | True | 2 |
| 4 | 3 | False | Loop Ends |

**Final Output:**

```text
0
1
2
Done with the loop
```

### Explanation

1. Initially, `i = 0`.
2. Python checks whether `i < 3`.
3. If the condition is True, the loop body executes.
4. The current value is printed.
5. `i = i + 1` increases the value by 1.
6. The condition is checked again.
7. When the condition becomes False, the loop terminates.

### Less Than vs Less Than or Equal To

```python
while i < 3:
```

Prints:

```text
0
1
2
```

Whereas:

```python
while i <= 3:
```

Prints:

```text
0
1
2
3
```

`<` means Less Than.

`<=` means Less Than or Equal To.


# 14. While Loop with User Input

We can use While Loop to repeatedly take input from the user.

### Example

```python
i = int(input("Enter the number: "))

while i <= 38:
    i = int(input("Enter the number: "))
    print(i)

print("Done with the loop")
```

### Sample Execution

```text
Enter the number: 8
Enter the number: 9
9
Enter the number: 34
34
Enter the number: 38
38
Enter the number: 98
98
Done with the loop
```

### Explanation

- Initially, the program takes an integer input from the user.
- The While Loop checks whether the value is less than or equal to 38.
- If True, it asks the user for another number.
- The new number is printed.
- When the new value becomes greater than 38, the loop terminates.

**Important:** In this example, the first input is not printed inside the loop. The next input is printed instead.


# 15. Decrementing While Loop

A Decrementing Loop decreases the value of a counter variable in every iteration.

### Example

```python
count = 5

while count > 0:
    print(count)
    count = count - 1
```

**Output:**

```text
5
4
3
2
1
```

### Explanation

- Initially, count is 5.
- The condition `count > 0` is checked.
- The current value is printed.
- `count = count - 1` decreases the value by 1.
- The loop continues until count becomes 0.
- When count becomes 0, the condition becomes False and the loop terminates.

### Increment vs Decrement

**Increment:**

```python
i = i + 1
```

Increases the variable's value by 1.

**Decrement:**

```python
i = i - 1
```

Decreases the variable's value by 1.

**Important:** Depending on the loop condition, we need to increment or decrement the counter variable.


# 16. Infinite While Loop

### What is an Infinite Loop?

An Infinite Loop occurs when the loop condition never becomes False.

### Example

```python
count = 5

while count > 0:
    print(count)
    count = count + 1
```

### Explanation

- Initially, count is 5.
- The condition `count > 0` is True.
- The value increases by 1 in every iteration.
- The value keeps increasing.
- The condition remains True forever.

Therefore, the loop never terminates automatically.

**Important:** Incorrectly updating a counter variable can create an Infinite Loop.

Always check whether your loop condition will eventually become False.


# 17. Else with While Loop

Python allows us to use an Else Statement with a While Loop.

The Else block executes when the While Loop condition becomes False and the loop terminates normally.

### Syntax

```python
while condition:
    statement
else:
    statement
```

### Example

```python
count = 5

while count > 0:
    print(count)
    count = count - 1

else:
    print("I am inside else")
```

**Output:**

```text
5
4
3
2
1
I am inside else
```

### Explanation

1. The While Loop starts with count = 5.
2. The loop continues while count is greater than 0.
3. The value decreases after every iteration.
4. When count becomes 0, the condition becomes False.
5. The Else block executes.

### Example 2: Condition Initially False

```python
count = -5

while count > 0:
    print(count)
    count = count - 1

else:
    print("I am inside else")
```

**Output:**

```text
I am inside else
```

### Explanation

- Initially, count is -5.
- The condition `count > 0` is False.
- The loop body does not execute.
- The Else block executes.


# 18. Do While Loop

### What is a Do While Loop?

A Do While Loop is a type of loop that executes its body at least once, irrespective of whether the condition is True or False.

It is also known as an Exit-Controlled Loop.

### Languages Supporting Do While Loop

- C
- C++
- Java

### C/Java Style Syntax

```c
do {
    // Loop body
} while (condition);
```

### How Do While Loop Works

1. The loop body executes first.
2. After execution, the condition is checked.
3. If the condition is True, the loop executes again.
4. If the condition is False, the loop terminates.

**Important:** The loop body executes at least once, even if the condition is initially False.

### Does Python Have a Do While Loop?

Python does not have a native Do While Loop.

However, we can emulate Do While Loop behaviour in Python.


# 19. Emulating Do While Loop in Python

Emulation means creating similar behaviour using the features available in a programming language.

### Executing the Statement Before While Loop

```python
i = int(input("Enter the number: "))

print(i)

while i <= 38:
    i = int(input("Enter the number: "))
    print(i)
```

Here, the first input and print statements execute before the While Loop.

Therefore, the first execution happens regardless of the While Loop condition.


# 20. Important Terminology

| Term | Meaning |
|---|---|
| Loop | Repeated execution of statements |
| Iteration | One execution of a loop |
| Iterable | An object whose elements can be accessed one by one |
| Increment | Increasing a variable's value |
| Decrement | Decreasing a variable's value |
| Infinite Loop | A loop that does not terminate automatically |
| Nested Loop | A loop inside another loop |
| Exit-Controlled Loop | A loop in which the condition is checked after executing the body |
| Emulation | Creating similar behaviour using available language features |


# 21. Key Learnings

1. Match Case is used to match a variable against different patterns.
2. `case _` works as a default case.
3. Match Case can use additional If conditions, known as guards.
4. Loops help execute statements repeatedly.
5. Python has two main types of loops: For Loop and While Loop.
6. For Loop is used to iterate over iterable objects.
7. Strings, Lists, Tuples, Sets and Dictionaries are examples of iterable objects.
8. Nested For Loops allow us to use one loop inside another.
9. The `range()` function generates a sequence of numbers.
10. The `range()` function accepts three arguments: start, stop and step.
11. The stop value in `range()` is excluded.
12. While Loop executes as long as its condition remains True.
13. Incrementing and decrementing are used to update counter variables.
14. Incorrect counter updates can create Infinite Loops.
15. While Loop can be used with an Else statement.
16. Python does not have a native Do While Loop.
17. Do While Loop behaviour can be emulated using While Loop and Break.

