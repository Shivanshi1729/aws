---
title: AWS Architect
author: Shivanshi
papersize: a4
geometry: margin=2.5cm
fontsize: 12pt
titlepage: true
colorlinks: true
linkcolor: blue
urlcolor: red
toccolor: RoyalBlue
---

# Introduction

- [AWS Certified Solutions Architect – Associate](https://aws.amazon.com/certification/certified-solutions-architect-associate/)

\newpage

# Networking

## IP Addressing

- IP -Internet Protocol

Ip addressing helps us to distinguish the nodes from each other by assigning a IP address 

IPv4 is like this:

- `01010101.01010101.01010101.01010100`
- 32 Bits
- 0-255 each 8 bit
- 1 octet = 8 bits = 4 octets

```
192.168.29.216 -> Computer 1
192.168.29.217 -> Computer 2 
```

- IP address is actually the combination of 0 and 1 -> Binary No

## Categories of IP addressing 

1. Class A
2. Class B
3. Class C
4. Class D
5. Class E

- 0= off (Host Bit)
- 1= on (Network Bit)

## Class A

- Range `0-127`  127 is reserved for class A

* Centrailized IANA = Intenet Authority of Number Assigned 

- `11111111.00000000.00000000.0000000`
- 255.0.0.0 = Subnet Mask
- Host Calculation Formula = 2^n - 2 = 2^24  - 2 =  
- N.H.H.H
- Eg:- 10.0.0.0

```
10.0.0.0 -> Network ID
10.0.0.1 -> First Ip of the n/w 
10.0.0.2
10.0.0.3
10.0.0.4
10.0.0.5
.
.
10.0.0.254 
10.0.0.255
10.0.1.0
10.0.1.1
10.0.1.2
.
.
10.0.1.255
10.0.2.0
10.0.2.1
.
.
10.0.255.255
10.1.0.0
10.1.0.1
10.1.0.2
.
.
10.1.1.0
.
.
10.255.255.254 -> Last Ip given to the host
10.255.255.255 -> Broadcast IP
```

### Examples

1. `98.0.0.0`

```
First Ip =98.0.0.1
Last Ip = 98.255.255.254
Network Id = 98.0.0.0
Broadcast Id = 98.255.255.255
```

2. `78.29.87.90`

```
First Ip = 78.0.0.1
Last IP = 78.255.255.254
Network Id = 78.0.0.0
Broadcast ID = 78.255.255.255
Subnet Mask = 255.0.0.0
```

---

## Class B

- Range=128-191
- `10111111.00000000.00000000.00000000`
- 191

- `11111111.11111111.00000000.00000000`
- Subnet Value=255.255.0.0
- Host= 2^16-2

```
132.0.0.0
132.0.0.0 = N.w ID
132.0.0.1 = fIRST iP
132.0.0.2
.
.
132.0.0.255
132.0.1.0
132.0.1.1
.
.
132.0.255.254= Last IP
132.0.255.255= Broadcast IP
```

### Examples 

1. `189.78.99.0`

```
N/W ID = 189.78.0.0
Subnet Mask = 255.255.0.0
First Ip = 189.78.0.1
Last IP = 189.78.255.254
Broadcast IP = 189.78.255.255
```

## Class C

- Range = 192-223
- 11011111.00000000.00000000.00000000
- Host= 2^8-2 = 254
- N.N.N.H
- 11111111.11111111.11111111.00000000
- Subnet Mask= 255.255.255.0

```
192.0.0.0
192.0.0.1
.
.
192.0.0.254
192.0.0.255
```

### Examples

1. `192.168.29.26`

```
N/W ID-192.168.29.0
First Ip= 192.168.29.1
Last Ip= 192.168.29.254
Broadcast Id= 192.168.29.255
```

## Class D (224-239) and Class E(240-255) 

- Class D = multicast 
- Class E= NASa, ISRO, DOD
- Subnetting:- But extraction of a n/w block to reduce wastage of IP

### Examples

1. `10.0.0.0 -> 4 N/w`

```
Class= A
Subnet Mask= 255.0.0.0
11111111.11000000.00000000.00000000

Updated Subnet Mask = 255.192.0.0 

2^n >= Required Nos
2^n >= 4
n=2 
```

- We need 2 more bits from the next octet 
- Block Size = 256-192=64
- {0-63} = 64

- N/W ranges =

```
10.0.0.0-10.63.255.255 -> Lan1 -> Updated Subnet Mask = 255.192.0.0
10.64.0.0-10.127.255.255 -> Lan 2 255.192.0.0
10.128.0.0-10.191.255.255 -> lan 3 255.192.0.0
10.192.0.0-10.255.255.255 -> lan 4 255.192.0.0
```

```
78.0.0.0 -> 9 N/w 
255.240.0.0
```

- N/W Ranges

```
78.0.0.0-78.15.255.255
78.16.0.0-78.31.255.255
32-47
48-63
64-79
80-95
96-111
112-127
128-143

134.89.0.0 -> 4 N/w
```

- Updated Subnet Mask = `255.255.192.0`
- N/W ranges

```
134.89.0.0-134.89.63.255
134.89.64.0-134.89.127.255
134.89.128.0-134.89.191.255
134.89.192.0-134.89.255.255

189.0.0.0 -> 6 N/w
```

- Updated Subnet Mask= 255.255.224.0
- Block Size = 32
- N/W

```
189.0.0.0-189.0.31.255
32-63
64-95
96-127
128-159
160-191
```

- 193.90.78.89 -> 10 N/w
- 193.90.78.0 -> 10 n/w
- 255.255.255.0

```
2^n >= required
2^n >= 10 
n=4
```

- 11111111.11111111.11111111.11110000
- Updated Subnet Mask= 255.255.255.240
- Block Size = 256-240 = 16 

```
N/w ranges
193.90.78.0-193.90.78.15
193.90.78.16-193.90.78.31
.
.
.
.
223.0.0.0 -> 23 N/W
```

- 255.255.255.0
- 11111111.11111111.11111111.11111000
- Updated Subnet Mask = 255.255.255.248

```
Block Size= 8
N/W Ranges 
223.0.0.0-223.0.0.7
8-15
16-23
24-31
32-39
40-47
48-55
56-63
64-71
72-79
80-87
88-95
96-103
104-111
112-119
120-127
128-135
136-143
144-151
152-159
160-167
168-175
176-183
```

## Hierarchy

- IANA
- ISP (VSNL)=Videsh Sanchar Nigam Ltd
- Client (VI , Jio,...)
- Customer