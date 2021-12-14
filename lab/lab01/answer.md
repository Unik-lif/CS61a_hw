# Lab01_hw_part:

### Q1:
```
>>> xk(10,10)
23
>>> xk(10,6)
23
>>> xk(4,6)
6
>>> xk(0,0)
25

>>> how_big(7)
'big'
>>> how_big(12)
huge
>>> how_big(1)
small
>>> how_big(-1)
nothing

2
1
0
-1

>>> positive = 28
>>> while positive:
...    print("positive?")
...    positive -= 3

Never end the loop automatically. Cause "positive != 0" forever.

>>> positive = -9
>>> negative = -12
>>> while negative:
...    if positive:
...        print(negative)
...    positive += 3
...    negative += 3

-12
-9
-6
```

###  Q2:
```
>>> True and 13
13
>>> False or 0
0
>>> not 10
False
>>> not None
True

>>> True and 1 / 0 and False
Error
>>> True or 1 / 0 or False
True
>>> True and 0
0
>>> False or 1
1
>>> 1 and 3 and 6 and 10 and 15
15
>>> -1 and 1 > 0
True
>>> 0 or False or 2 or 1 / 0
2
>>> not 0
True
>>> (1 + 1) and 1
1
>>> 1/0 or True
Error
>>> (True or False) and False
False

debug test:
1
2
2
0: print: investigate the values of variables at certain points in your code.
2
2
1
3
```

### Q6:
```
10
foo
1
29
29
mashed potatoes
'mashed potatoes'