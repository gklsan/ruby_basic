# Maximum Subarray
# Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

# Example:

# Input: [-2,1,-3,4,-1,2,1,-5,4],
# Output: 6
# Explanation: [4,-1,2,1] has the largest sum = 6.
# Follow up:

# If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.


# Solution 1
def max_sub_array_1(nums)
    return 0 if nums.empty?
    
    max = curr_max = nums.shift
    nums.map do |num|
        new_sum = curr_max.to_i + num
        curr_max = (num > new_sum) ? num : new_sum
        max = curr_max if curr_max > max.to_i
    end
    max
end


# Solution 2
def max_sub_array_2(nums)
    curr = 0
    max = nums[0]
    nums.each do |ele|
        
        curr += ele
        max = curr if curr > max
        curr = 0 if curr < 0
    
    end
    return max
end


# Solution 3
def max_sub_array_3(nums)
    running_sum = nums[0]
    max_sum = nums[0]
    i = 1
    while i < nums.length
      running_sum = [nums[i], running_sum + nums[i]].max
      max_sum = [max_sum, running_sum].max
      i += 1
    end    
    
  max_sum
end

puts max_sub_array_1([-2,1,-3,4,-1,2,1,-5,4])
puts max_sub_array_2([-2,1,-3,4,-1,2,1,-5,4])
puts max_sub_array_3([-2,1,-3,4,-1,2,1,-5,4])
