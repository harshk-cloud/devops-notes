
# Day 4 - Typecasting and User Input 


# 1. What is Typecasting?

Meaning: Typecasting is the process of converting one data type into another data type. It is also known as Type Conversion.

In Python, every value has a data type.

Example:

```
a = 27
b = "27"

print(type(a))
print(type(b))
```

Output:

```
<class 'int'>
<class 'str'>
```

Explanation:
- a = 27 is an Integer.
- b = "27" is a String.
- Both values look the same but their data types are different.

# 2. Basic Typecasting Example

Meaning: Typecasting converts a value from one data type to another.

Example:

```
a = "27"
b = int(a)

print(b)
print(type(b))
```

Output:

```
27
<class 'int'>
```

Explanation:
- a contains the string "27".
- int(a) converts the string into an integer.
- The converted value is stored in variable b.

# 3. String Concatenation vs Arithmetic Addition

Meaning: When we use the + operator with two strings, Python joins them instead of performing mathematical addition. This is called String Concatenation.

Example:

```
a = "1"
b = "2"

print(a + b)
```

Output:

```
12
```

Explanation:
- Both variables contain strings.
- Python joins both strings.
- It does not perform arithmetic addition.

Another Example:

```
a = "Harry"
b = "bhai"

print(a + b)
```

Output:

```
Harrybhai
```

# 4. Arithmetic Addition Using Typecasting

Purpose: If we want to perform actual arithmetic operations, we need to convert numeric strings into integers or floats.

Example:

```
a = "1"
b = "2"

print(int(a) + int(b))
```

Output:

```
3
```

Explanation:
- int(a) converts "1" into integer 1.
- int(b) converts "2" into integer 2.
- Python performs actual mathematical addition.

# 5. Two Types of Typecasting

Python supports two types of typecasting:

1. Explicit Typecasting
2. Implicit Typecasting

## 5.1 Explicit Typecasting

Meaning: When a programmer manually converts one data type into another using built-in functions, it is called Explicit Typecasting.

Purpose: It allows programmers to control the conversion of data types according to their requirements.

Common Type Conversion Functions:

- int() - Converts a compatible value into an integer.
- float() - Converts a compatible value into a float.
- str() - Converts a value into a string.
- bool() - Converts a value into a boolean.
- list() - Converts an iterable into a list.
- tuple() - Converts an iterable into a tuple.
- set() - Converts an iterable into a set.

Example:

```
a = "15"
b = "7"

print(int(a) + int(b))
```

Output:

```
22
```

### Important: Typecasting Errors

Not every value can be converted into every data type.

Example 1:

```
a = "Harry"

print(int(a))
```

Output:

```
ValueError
```

Reason: "Harry" is text, not a valid integer.

Example 2:

```
a = "15.5"

print(int(a))
```

Output:

```
ValueError
```

Reason: int() cannot directly convert a decimal string into an integer.

Correct Way:

```
a = "15.5"

print(float(a))
```

Output:

```
15.5
```

## 5.2 Implicit Typecasting

Meaning: When Python automatically converts one data type into another during an operation, without requiring the programmer to manually convert it, it is called Implicit Typecasting.

Purpose: Python automatically converts compatible numeric values to a suitable type to preserve precision and prevent unnecessary data loss.

Example:

```
a = 1.9
b = 8

print(a + b)
print(type(a + b))
```

Output:

```
9.9
<class 'float'>
```

Explanation:
- a is a float.
- b is an integer.
- Python automatically promotes the integer to a float during addition.
- The final result is a float.

# 6. What is User Input?

Meaning: User Input is the data or information provided by a user to a computer program.

Purpose: It allows users to interact with a program and get results according to their input.

In Python, we use the input() function to take input from the user.

## 6.1 input() Function

Syntax:

```
variable = input()
```

Example:

```
a = input()
print(a)
```

Output:

```
Harry
Harry
```

Explanation:
- When the program runs, Python waits for user input.
- The user enters Harry.
- The input is stored in variable a.
- print(a) displays the stored value.

## 6.2 Displaying a Message Using input()

Meaning: We can pass a message inside input() to tell the user what information to enter.

Example:

```
a = input("Enter your name: ")
print("My name is", a)
```

Output:

```
Enter your name: Harsh
My name is Harsh
```

Explanation:
- The message inside input() is displayed to the user.
- The user enters their name.
- The entered value is stored in variable a.
- print() displays the result.

# 7. Important Rule of input() Function

Important: The input() function always returns the entered value as a String (str), even if the user enters a number.

Example:

```
a = input("Enter your age: ")

print(type(a))
```

Output:

```
<class 'str'>
```

Explanation:
- Even if the user enters 25, Python stores it as a string.
- We need to use typecasting whenever we require another data type.

# 8. String Concatenation Problem with User Input

Example:

```
x = input("Enter first number: ")
y = input("Enter second number: ")

print(x + y)
```

Input:

```
Enter first number: 12
Enter second number: 100
```

Output:

```
12100
```

Explanation:
- input() returns both values as strings.
- Therefore, Python joins the two strings.
- This operation is called String Concatenation.
- It does not perform arithmetic addition.

# 9. Actual Arithmetic Addition Using User Input

Purpose: To perform actual mathematical operations, we need to convert user input into integers or floats.

Example:

```
x = input("Enter first number: ")
y = input("Enter second number: ")

print(int(x) + int(y))
```

Input:

```
Enter first number: 12
Enter second number: 100
```

Output:

```
112
```

Explanation:
- int(x) converts the first input into an integer.
- int(y) converts the second input into an integer.
- Python performs actual arithmetic addition.

# 10. Handling Invalid User Input

Example:

```
x = input("Enter first number: ")
y = input("Enter second number: ")

print(int(x) + int(y))
```

Input:

```
Enter first number: 89
Enter second number: Harry
```

Output:

```
ValueError
```

Reason:
- 89 can be converted into an integer.
- Harry cannot be converted into an integer.
- Therefore, Python raises a ValueError.

Key Learning: Always remember that user input is initially stored as a string. Convert it into the required data type before performing mathematical operations.


## Key Learnings

- Typecasting is used to convert one data type into another.
- Explicit typecasting is performed manually by the programmer.
- Implicit typecasting is performed automatically by Python.
- int(), float(), and str() are common type conversion functions.
- String concatenation joins two strings instead of performing mathematical addition.
- The input() function is used to take input from the user.
- The input() function always returns a string.
- int(input()) is used to take integer input.
- float(input()) is used to take decimal input.
- Invalid type conversion can raise a ValueError.
- The type() function is used to check the data type of a variable.
- Typecasting is important when performing arithmetic operations with user input.
