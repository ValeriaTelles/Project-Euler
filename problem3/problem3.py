""" 
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143?
"""
from math import trunc

def largestPrimeFactor(num):
    primeFactor = 1
    x = 2

    while x < num/x + 1:
        if num % x == 0:
            primeFactor = x
            num /= x
        else:
            x += 1
    
    if primeFactor < num:
        primeFactor = num
        
    return trunc(primeFactor)

def main():
    num = 600851475143
    ans = largestPrimeFactor(num)
    print(ans)

if __name__ == "__main__":
    main()