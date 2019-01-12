#!/usr/bin/env python3

def g():
   global v
   v = 'HIHI'

def foo():
   v = 'local v'

   def foo1():
      nonlocal v
      v = 'nonlocal v'
      print(v)

   def foo2():
      print(v)

   print(v)
   foo1()
   foo2()

v = 'string'
g()
print(v)
