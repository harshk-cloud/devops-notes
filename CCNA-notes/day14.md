# Day 14 - IPv4 Address: Binary & Decimal Conversion

## IPv4 Address

Meaning: An IPv4 address is a 32-bit address used to identify a device on an IP network.

Purpose: It allows devices to identify and communicate with each other over a network.

Example: 192.168.1.21

An IPv4 address has 4 parts called octets:

```
192 . 168 . 1 . 21
 |     |    |    |
Octet 1  Octet 2  Octet 3  Octet 4
```

Each octet contains 8 bits.

Therefore:

4 octets × 8 bits = 32 bits

So, IPv4 = 32 bits = 4 bytes


## Binary

Meaning: Binary is a number system that uses only two digits: 0 and 1.

Purpose: Computers use binary to represent and process data.

Binary digits are called bits.

```
1 = ON
0 = OFF
```
Example:

10101100

Each position contains either 0 or 1.


## Bit and Byte

Meaning: A bit is a single binary digit that can have a value of 0 or 1.

Meaning: A byte is a group of 8 bits.

1 bit = 0 or 1

8 bits = 1 byte

Example:

10101100 = 8 bits = 1 byte


## IPv4 in Binary

Meaning: An IPv4 address can be represented as 32 binary bits instead of decimal numbers.

Example:

Decimal:
192.168.1.21

Binary:
11000000.10101000.00000001.00010101

Each octet still contains exactly 8 bits.
```
11000000 = Octet 1
10101000 = Octet 2
00000001 = Octet 3
00010101 = Octet 4
```

## Powers of 2 Chart

Meaning: Each position in an 8-bit binary number has a specific value based on powers of 2.

Chart:
```
128  64  32  16  8  4  2  1
2^7  2^6 2^5 2^4 2^3 2^2 2^1 2^0
```

This chart is used for both:

Binary → Decimal     
Decimal → Binary


## Binary → Decimal

Meaning: To convert binary into decimal, add the values where the binary bit is 1.

Rule: Bit = 1 means ON, so add its corresponding value.

Example:

11000000
```
128  64  32  16  8  4  2  1
 1    1   0   0   0  0  0  0
```

128 + 64 = 192

Therefore:

11000000 = 192


## Binary → Decimal Example 2

Example:

10101000
```
128  64  32  16  8  4  2  1
 1    0   1   0   1  0  0  0
```

128 + 32 + 8 = 168

Therefore:

10101000 = 168


## Binary → Decimal Example 3

Example:

00000001

Only the last bit is ON.

1 = 1

Therefore:

00000001 = 1


## Binary → Decimal Example 4

Example:

00010101
```
128  64  32  16  8  4  2  1
 0    0   0   1   0  1  0  1
```

16 + 4 + 1 = 21

Therefore:

00010101 = 21


## Complete IPv4 Conversion

Binary:

11000000.10101000.00000001.00010101

Convert each octet separately:
```
11000000 = 192
10101000 = 168
00000001 = 1
00010101 = 21
```

Therefore:

11000000.10101000.00000001.00010101 = 192.168.1.21


## Decimal → Binary

Meaning: Decimal → Binary converts a normal decimal number into its 8-bit binary representation.

Purpose: This helps us understand how computers represent IPv4 addresses internally.

Method: Start from 128 and move from left to right using the powers of 2 chart.

Rule:

If the current value can be subtracted from the remaining number:

Bit = 1 (ON)

If it cannot be subtracted:

Bit = 0 (OFF)


## Decimal → Binary Example: 172

Convert:

172 → Binary

Chart:
```
128  64  32  16  8  4  2  1
```

Step 1:

Can 128 be subtracted from 172?

Yes.

172 - 128 = 44

Bit = 1

Step 2:

Can 64 be subtracted from 44?

No.

Bit = 0

Step 3:

Can 32 be subtracted from 44?

Yes.

44 - 32 = 12

Bit = 1

Step 4:

Can 16 be subtracted from 12?

No.

Bit = 0

Step 5:

Can 8 be subtracted from 12?

Yes.

12 - 8 = 4

Bit = 1

Step 6:

Can 4 be subtracted from 4?

Yes.

4 - 4 = 0

Bit = 1

The remaining 2 and 1 cannot be subtracted from 0.

Bits = 0 and 0

Therefore:

172 = 10101100

Check:

128 + 32 + 8 + 4 = 172


## Decimal → Binary Example: 16

Convert:

16 → Binary

```
128 → 0
64  → 0
32  → 0
16  → 1
```

16 - 16 = 0

Remaining values are all OFF.

Therefore:

16 = 00010000

Check:

16 = 16


## Decimal → Binary Example: 34

Convert:

34 → Binary
```
128 → 0
64  → 0
32  → 1
```

34 - 32 = 2
```
16 → 0
8  → 0
4  → 0
```

2 → 1

2 - 2 = 0

1 → 0

Therefore:

34 = 00100010

Check:

32 + 2 = 34


## Decimal → Binary Example: 3

Convert:

3 → Binary
```
128 → 0
64  → 0
32  → 0
16  → 0
8   → 0
4   → 0
2   → 1
```

3 - 2 = 1

1 → 1

1 - 1 = 0

Therefore:

3 = 00000011

Check:

2 + 1 = 3


## Complete Decimal → Binary Conversion

Example:

172.16.34.3

Convert each octet separately:
```
172 = 10101100
16  = 00010000
34  = 00100010
3   = 00000011
```

Therefore:

172.16.34.3

=

10101100.00010000.00100010.00000011


## Important Pattern

For every IPv4 octet:

8 bits = 1 byte

The maximum value of an 8-bit octet is:

11111111

128 + 64 + 32 + 16 + 8 + 4 + 2 + 1 = 255

Therefore:

Minimum IPv4 octet = 0
Maximum IPv4 octet = 255

So every IPv4 octet ranges from:

0 - 255


## Why Binary Conversion Matters

Meaning: IP addresses are normally written in decimal because humans can read them easily, but networking equipment works with binary.

Example:

Human-readable:

172.16.34.3

Binary representation:
```
10101100.00010000.00100010.00000011
```

Understanding decimal and binary conversion is important for subnetting.

Subnetting depends heavily on understanding:
```
128 64 32 16 8 4 2 1
```

## Key Learnings

- IPv4 addresses are 32 bits long.
- IPv4 has 4 octets.
- Each octet contains 8 bits.
- 8 bits = 1 byte.
- Binary uses only 0 and 1.
- 1 means ON.
- 0 means OFF.
- The 8-bit powers-of-2 chart is:
  128 64 32 16 8 4 2 1
- Binary → Decimal: Add the values where the bit is 1.
- Decimal → Binary: Check each value from 128 to 1 and subtract when possible.
- Every IPv4 octet ranges from 0 to 255.
- 192.168.1.21 in binary is:
  11000000.10101000.00000001.00010101
- 172.16.34.3 in binary is:
  10101100.00010000.00100010.00000011
- Binary ↔ Decimal conversion is a fundamental skill for subnetting.
