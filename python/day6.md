# Day 6 - Conditional Statements

## 1. Conditional Statements

Conditional statements are used to make decisions in a program based on conditions.

Python uses `if`, `elif`, and `else` to execute code depending on whether a condition is `True` or `False`.

## 2. If Statement

The `if` statement executes a block of code when the condition is `True`.

```python
age = 20

if age > 18:
    print("You can drive")
```

### Output

```text
You can drive
```

## 3. Comparison Operators

Comparison operators compare two values and return either `True` or `False`.

| Operator | Meaning | Example | Result |
|---|---|---|---|
| `>` | Greater than | `10 > 5` | `True` |
| `<` | Less than | `10 < 5` | `False` |
| `>=` | Greater than or equal to | `10 >= 10` | `True` |
| `<=` | Less than or equal to | `10 <= 10` | `True` |
| `==` | Equal to | `10 == 10` | `True` |
| `!=` | Not equal to | `10 != 5` | `True` |

## 4. If-Else Statement

The `if-else` statement executes one block of code when the condition is `True` and another block when the condition is `False`.

```python
age = 16

if age > 18:
    print("You can drive")
else:
    print("You cannot drive")
```

### Output

```text
You cannot drive
```

## 5. Indentation

Indentation means adding spaces at the beginning of a line to define a block of code.

Python uses indentation to identify which statements belong to an `if`, `elif`, or `else` block.

```python
age = 20

if age >= 18:
    print("You can drive")
    print("Program Finished")
```

Statements inside the condition block must have proper indentation.

## 6. Elif Statement

The `elif` statement means "else if".

It is used when we need to check multiple conditions.

```python
num = int(input("Enter a number: "))

if num < 0:
    print("Number is negative")
elif num == 0:
    print("Number is zero")
else:
    print("Number is positive")
```

### Output

```text
Enter a number: 5
Number is positive
```

## 7. Nested If Statements

A nested `if` statement means using an `if` statement inside another `if` statement.

```python
num = 18

if num > 0:
    if num <= 10:
        print("Number is between 1 and 10")
    elif num > 10 and num <= 20:
        print("Number is between 11 and 20")
    else:
        print("Number is greater than 20")
else:
    print("Number is negative")
```

### Output

```text
Number is between 11 and 20
```

## 8. Logical Operators in Conditions

Logical operators are used to combine multiple conditions.

### AND Operator

The `and` operator returns `True` only when both conditions are `True`.

```python
num = 10

if num > 0 and num <= 20:
    print("Number is between 1 and 20")
```

### OR Operator

The `or` operator returns `True` if at least one condition is `True`.

### NOT Operator

The `not` operator reverses the result of a condition.

## 9. Key Learnings

- Conditional statements are used to make decisions.
- `if` executes code when a condition is `True`.
- `else` executes code when the `if` condition is `False`.
- `elif` is used to check additional conditions.
- Comparison operators return `True` or `False`.
- Python uses indentation to define code blocks.
- Nested `if` means an `if` statement inside another `if` statement.
- Logical operators can combine multiple conditions.
