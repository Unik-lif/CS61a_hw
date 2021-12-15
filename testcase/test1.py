from operator import floordiv, mod

def divide_exact(n, d = 10):
    """
        Return the quotient and remainder of dividing n by d.
        >>> q, r = divide_exact(2013, 10)
        >>> q
        201
        >>> r
        3
    """
    return floordiv(n, d), mod(n, d)

def absolute_value(x):
    """
    Return the absolute value of x.
    """
    if x < 0:
        return -x
    elif x > 0:
        return x
    else:
        return 0

