module problem025

"""
What is the index of the first term in the Fibonacci sequence to contain 1000 digits?
"""
function fibonacci_number()
    count = 0
    prev = big(1); curr = big(0)
    while length(string(curr)) < 1000
        prev, curr = curr, prev + curr
        count += 1
    end
    return count
end

println(fibonacci_number())

end