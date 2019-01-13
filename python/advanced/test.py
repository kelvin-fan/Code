#!/usr/bin/env python3

def foo(*args, **kwargs):
   print(type(args))
   print(type(kwargs))

foo(1, 2, 3, sth='something')
