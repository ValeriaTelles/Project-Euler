module problem010
using Primes

"""
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
Find the sum of all the primes below two million.
"""
summation_prime = sum(primes(2*10^6))
println(summation_prime)

end