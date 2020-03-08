# Move Zeroes
# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

# Example:

# Input: [0,1,0,3,12]
# Output: [1,3,12,0,0]
# Note:

# You must do this in-place without making a copy of the array.
# Minimize the total number of operations.


# Solution 1
def move_zeroes_1(nums)
    zero_count = nums.count(0)
    zero_arr = Array.new(zero_count, 0)
    nums.delete(0)
    res = (nums << zero_arr)
    res.flatten!
    res
end


move_zeroes_1([0,1,0,3,12])