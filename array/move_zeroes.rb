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

#Solution 2
def move_zeroes_2(nums)
    shift = 0
    nums.each_with_index do |v,i|
      if v == 0
        shift += 1  
      else
        nums[i-shift] = v
      end
    end
    shift.times {|i| nums[-(i+1)] = 0}
    nums
end

# Solution 3
def move_zeroes_3(nums)
    index = 0
    result = []
    nums.each { |value| result << value if value != 0 }
    return if result.size == nums.size
    
    nums.each_with_index do |value, index|
       if index < result.size
          nums[index] = result[index]
       else
           nums[index] = 0
       end
    end
end


p move_zeroes_1([0,1,0,3,12])
p move_zeroes_2([0,1,0,3,12])
p move_zeroes_3([0,1,0,3,12])
