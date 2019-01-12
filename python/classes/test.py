#!/usr/bin/env python3

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
