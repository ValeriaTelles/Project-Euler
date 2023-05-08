module problem004

"""
A palindromic number reads the same both ways. 
The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.
Find the largest palindrome made from the product of two 3-digit numbers.
"""
function largest_palindrome_three()
    palindrome = 0
    for i in 100:999, j in 100:999
        product = i * j
        if string(product) == reverse(string(product)) && product > palindrome
            palindrome = product
        end
    end
    return palindrome
end

println(largest_palindrome_three())

end