# Given a non-empty array of integers, every element appears twice except for one. Find that single one.
# Note:
# Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
# Example 1:
# Input: [2,2,1]
# Output: 1
# Example 2:
# Input: [4,1,2,1,2]
# Output: 4

def single_number(nums)
    return 0 if nums.empty?
    nums.group_by(&:itself).select do |k, v|
        k if v.size < 2 
    end.keys[0].to_i
end

puts single_number([2,2,1])