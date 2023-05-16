module problem016

"""
2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
What is the sum of the digits of the number 2^1000?
"""
function power_digit_sum(num)
    return sum(digits(num))
end

num = BigInt(2)^1000
println(power_digit_sum(num))

end