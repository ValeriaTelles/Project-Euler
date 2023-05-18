module problem017

"""
If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
"""
function number_letter_counts(upper, lower)
    one_to_nineteen = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    twenty_to_ninety = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

    count = 0
    for n in upper:lower
        if n == 1000
            count += length("onethousand")
        elseif n < 20
            count += length(one_to_nineteen[n])
        elseif n < 100
            if n % 10 == 0
                count += length(twenty_to_ninety[floor.(Int64, n/10-1)])
            else
                count += length(twenty_to_ninety[floor.(Int64, n/10-1)]) + length(one_to_nineteen[n%10])
            end
        elseif n < 1000
            if n % 100 == 0
                count += length(one_to_nineteen[floor.(Int64, n/100)]) + length("hundred")
            else 
                count += length(one_to_nineteen[floor.(Int64, n/100)]) + length("hundred") + length("and") + number_letter_counts(n%100, n%100)
            end
        end
    end
    return count
end

println(number_letter_counts(1, 1000))

end