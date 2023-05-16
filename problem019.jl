module problem019
using Dates

"""
How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
"""
n = length([date for date in Date(1901, 1, 1):Day(1):Date(2000, 12, 31) if (Dates.day(date) == 1 && Dates.dayofweek(date) == 7)])
println(n)

end