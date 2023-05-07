module problem003

"""
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143?
"""

function largest_prime_factor(n, factor)
    while n > factor
        if n % factor == 0
            n /= factor
            factor = 2
        else
            factor += 1
        end
    end
    return factor
end

println(largest_prime_factor(600851475143, 2))

end