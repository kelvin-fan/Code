![Python Logo](https://www.python.org/static/community_logos/python-logo.png)

## Table of Contents
1. [Immutable String](https://github.com/ZeroSword-X/programming/tree/master/python/basic#string-in-python3-is-immutable)
1. [Dictionary](https://github.com/ZeroSword-X/programming/tree/master/python/basic#dictionary-in-python3)
1. [Tuple](https://github.com/ZeroSword-X/programming/tree/master/python/basic#tuple-in-python3)
1. [Multiple conditions in if statement](https://github.com/ZeroSword-X/programming/tree/master/python/basic#more-than-one-condition-in-if-else-statement)
1. [and, or expressions](https://github.com/ZeroSword-X/programming/tree/master/python/basic#andor-expressions)
1. [How to use sorted()](https://github.com/ZeroSword-X/programming/tree/master/python/basic#how-to-use-sorted-in-python-how-to-use-the-key-argument)
1. [Global variable](https://github.com/ZeroSword-X/programming/tree/master/python/basic#how-to-use-and-modify-global-variables)

---

#### String in Python3 is Immutable

```python
>>> s = 'Hello'
>>> s[3] = 'f'
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: 'str' object does not support item assignment
```

<br>

#### Dictionary in Python3

```python
#!/usr/bin/env python3

# Create an empty dictionary
d = dict()

d['a'] = 'Hello'
d['b'] = 'World'

# return the keys of a dictionary as an iterable object
d.keys()

# Dict Comprehension
k = {x: x**2 for x in (2, 4, 6)}

# Iterating dictionaries
for k, v in d.items():
   ...

# Check if a key is used in a dictionary
'a' in d   (True)
'k' in d   (False)  

# Return an item from a dictionary
# If the key k is not in the dict, it will return the second argument (default value)
d.get(k, None)   
```

<br>

#### Tuple in Python3

```python
#!/usr/bin/env python3

t1 = (1, 2)
# t1[0] = 33   Error: tuple is immutable in python3

# ---------------------------------------------------------

# The first way is the correct one to create a tuple with one element only
t2 = (10,)
t3 = (10)

# Output:
# <class 'tuple'>
# <class 'int'>

print(type(t2))
print(type(t3))
```

<br>

#### More than one condition in if else statement

```python
>>> var = 3
>>> if var > 0 and var < 10: print('Passed')
... 
Passed
```

<br>

#### and/or expressions 

- **Note**: Return the last evaluated item, even closed the expression with brackets

```python
>>> string1, string2, string3 = '', 'Trondheim', 'Hammer Dance'
>>> non_null = string1 or string2 or string3
>>> non_null
'Trondheim' 
```

<br>

#### How to use sorted() in python ([How to use the **key** argument](https://docs.python.org/3.6/library/functions.html#sorted))

```python
#!/usr/bin/env python3

# Elements are comparable
l = [4, -5, 7, 3, 11, 2, -66]
print(sorted(l))
print(sorted(l, reverse=True))
print(sorted(l, key=lambda x: 1/x))
```

<br>

#### How to use and modify global variables

```python
>>> def foo():
...    global i
...    i = 3
... 
>>> i = 'string'
>>> i
'string'
>>> foo()
>>> i
3
```
