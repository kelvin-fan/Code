![Python Logo](https://www.python.org/static/community_logos/python-logo.png)

## Table of Contents
1. [Ternary expression](https://github.com/ZeroSword-X/programming/tree/master/python/advanced#ternary-expression)
1. [nonlocal statement](https://github.com/ZeroSword-X/programming/tree/master/python/advanced#nonlocal-in-python3)
1. [args and kwargs](https://github.com/ZeroSword-X/programming/tree/master/python/advanced#args-and-kwargs)
1. [packing and unpacking](https://github.com/ZeroSword-X/programming/tree/master/python/advanced#packing-and-unpacking)
1. [list comprehension](https://github.com/ZeroSword-X/programming/tree/master/python/advanced#list-and-dictionary-comprehension)
1. [Index slices](https://github.com/ZeroSword-X/programming/tree/master/python/advanced#index-slices)
1. [Exception handling](https://github.com/ZeroSword-X/programming/tree/master/python/advanced#exception-handling)

---

### Ternary expression

```python
#!/usr/bin/env python3

# item_if_true if item else item_if_false
for i in range(5):
   print("odd" if i % 2 else "even")
```

<br>

### `nonlocal` in python3

- [Documentation about nonlocal statement in Python3](https://docs.python.org/3/reference/simple_stmts.html#grammar-token-nonlocal-stmt) ([Example](https://www.cnblogs.com/z360519549/p/5172020.html))

<br>

### `args` and `kwargs`

```python
#!/usr/bin/env python3

def foo(*args, **kwargs):
   print(type(args))
   print(type(kwargs))


# Output:
# <class 'tuple'>
# <class 'dict'>

foo(1, 2, 3, sth='something')    
```

<br>

### List and Dictionary Comprehension

```python
#!/usr/bin/env python3

# new_list = [item_to_insert for element in iterable]
l = [i for i in range(5)]
print(l)   # output: [0, 1, 2, 3, 4]


# Adding if statment in list comprehension
l = [i for i in range(20) if i % 3 == 0]

l = [i
     for i in range(20)
        if i % 3 == 0
    ]

print(l)   # output: [0, 3, 6, 9, 12, 15, 18]
```

<br>

### packing and unpacking

```python
#!/usr/bin/env python3

l = list(range(10, 200, 3))

# The * operator allows us to gather multiple elements into one item
a, *_, b, c = l
print(a, b, c)   # output: 10 196 199


# The * operator will also let us unpack, or expand values into a function's arguments
# The ** operator will let us unpack a dictionary as keywords to a function
l = [1, 3, 5]
print(*l)       # equivalent to print(1, 3, 5)

d = {'sep': '-', 'end': "\n"}
print(*l, **d)  
```

<br>

### Index slices

```python
#!/usr/bin/env python3

l = list(range(10, 200, 3))

# l[start:end]         * note that end is not included
print(l[10:-2], end="\n\n")

# l[start:end:step]    * note that end is not included
print(l[::3])
```

<br>

### Exception handling

```python
#!/usr/bin/env python3

try:
   raise NameError('Manually raise Exception')
except NameError as e:
   print('NameError occured: ')
   print(e)
except Exception as e:
   print('Other exception occured !!')
else:
   # get executed when there is no exception raise in the try block
   print('No exception occur')
```
