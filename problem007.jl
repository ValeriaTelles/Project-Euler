module problem007

"""
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
What is the 10,001st prime number?
"""
function prime_number(n)
    primes = [2]
    num = 3
    while length(primes) < n
        if all(num % prime != 0 for prime in primes)
            push!(primes, num)
        end
        num += 2
    end
    return primes[end]
end

println(prime_number(10001))

end