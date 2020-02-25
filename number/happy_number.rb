# Happy Number
# Write an algorithm to determine if a number is "happy".

# A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.

# Example: 

# Input: 19
# Output: true
# Explanation: 
# 12 + 92 = 82
# 82 + 22 = 68
# 62 + 82 = 100
# 12 + 02 + 02 = 1


def is_happy_1?(n, sums = [])
    return false if n.to_i < 1 || sums.include?(n)
    return true if n == 1
    sums << n    
    numbers = n.to_s.split('')
    total = numbers.sum{|i| i.to_i * i.to_i }
    is_happy_1?(total, sums)
end


puts is_happy_1?(19)
