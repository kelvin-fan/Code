![Python Logo](https://www.python.org/static/community_logos/python-logo.png)

## Table of Contents
1. [nonlocal statement](https://github.com/ZeroSword-X/programming/tree/master/python/advanced#nonlocal-in-python3)
1. [args and kwargs](https://github.com/ZeroSword-X/programming/tree/master/python/advanced#args-and-kwargs)
1. [list comprehension](https://github.com/ZeroSword-X/programming/tree/master/python/advanced#list-comprehension)

---

#### `nonlocal` in python3

- [Documentation about nonlocal statement in Python3](https://docs.python.org/3/reference/simple_stmts.html#grammar-token-nonlocal-stmt) ([Example](https://www.cnblogs.com/z360519549/p/5172020.html))

<br>

#### `args` and `kwargs`

```python
#!/usr/bin/env python3

def foo(*args, **kwargs):
   print(type(args))
   print(type(kwargs))

foo(1, 2, 3, sth='something')    
```

**Output**

```
<class 'tuple'>
<class 'dict'>
```

<br>

#### List Comprehension

```python
>>> [x for x in range(0, 10, 3)]
[0, 3, 6, 9]
```
