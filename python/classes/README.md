![Python Logo](https://www.python.org/static/community_logos/python-logo.png)

## Table of Contents
1. [Name mangling]()
1. [Class variable]()
1. [Iterators and Generators]()

---

#### Private? variables - [Name mangling](https://docs.python.org/3.6/tutorial/classes.html#private-variables) in python

```python
>>> class SomeClass():
...    def __init__(self):
...       self.__data = 'Hello World !!'
... 
>>> s = SomeClass()
>>> s.data
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AttributeError: 'SomeClass' object has no attribute 'data'
>>> s._SomeClass__data
'Hello World !!'
```

<br>

#### Shared Class variables

```python
# Class variable
class SomeClass:
   # The variable cv is shared for all instances of SomeClass
   # Unless you specifically assign a new value to the variable cv 
   cv = 'Hello'

s1 = SomeClass()
s2 = SomeClass()

# Result is true
print(s1.cv is s2.cv)

s1.cv = ''

# Result is False
print(s1.cv is s2.cv)
```

<br>

#### Iterators and Generators

- [Iterators](https://docs.python.org/3.6/tutorial/classes.html#iterators) and [Generators](https://docs.python.org/3.6/tutorial/classes.html#generators)
