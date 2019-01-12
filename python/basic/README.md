## Useful Techniques

-   List Comprehension

     ```python
     >>> [x for x in range(0, 10, 3)]
     [0, 3, 6, 9]
     ```

<br>

-   String in python is immutable

     ```python
     >>> s = 'Hello'
     >>> s[3] = 'f'
     Traceback (most recent call last):
       File "<stdin>", line 1, in <module>
     TypeError: 'str' object does not support item assignment
     ```

<br>

-   Dictionaries

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
     
     # Iterate over a dictionary
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

-   More than one condition

     ```python
     >>> var = 3
     >>> if var > 0 and var < 10: print('Passed')
     ... 
     Passed
     ```

<br>

-   and/or expressions (Return the last evaluated item, even closed the expression with brackets)

     ```python
     >>> string1, string2, string3 = '', 'Trondheim', 'Hammer Dance'
     >>> non_null = string1 or string2 or string3
     >>> non_null
     'Trondheim' 
     ```

<br>

-   How to use sorted() in python ([How to use the **key** argument](https://docs.python.org/3.6/library/functions.html#sorted))

     ```python
     #!/usr/bin/env python3
     
     # Elements are comparable
     l = [4, -5, 7, 3, 11, 2, -66]
     print(sorted(l))
     print(sorted(l, reverse=True))
     print(sorted(l, key=lambda x: 1/x))
     ```

<br>

-   How to use and modify global variables

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

<br>

- [nonlocal statement](https://docs.python.org/3/reference/simple_stmts.html#grammar-token-nonlocal-stmt)
   - [Usage Example](https://www.cnblogs.com/z360519549/p/5172020.html)
     
<br>
 
