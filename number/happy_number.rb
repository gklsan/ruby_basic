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

# Solution 1
def is_happy_1?(n, sums = [])
    return false if n.to_i < 1 || sums.include?(n)
    return true if n == 1
    sums << n    
    numbers = n.to_s.split('')
    total = numbers.sum{|i| i.to_i * i.to_i }
    is_happy_1?(total, sums)
end


# Solution 2
def is_happy_2?(n)
  seen = []
  while n != 1 && !seen.include?(n)
    seen << n
    n = n.to_s.chars.map(&:to_i).sum { |i| i**2 }
  end
  n == 1
end

# Solution 3
def sum_square_digits(n)
    sum = 0
    while(n > 0)
        digit = n % 10
        sum += digit * digit
        n = (n - digit) / 10
    end
    
    sum
end

def is_happy?(n)
    sum = n
    unhappy_num = 4

    while(true)
        sum = sum_square_digits(sum)
        return true if sum == 1
        return false if sum == unhappy_num
    end
end


puts is_happy_1?(19)
puts is_happy_1?(19)
puts is_happy?(19)
