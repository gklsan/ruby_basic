# Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

# push(x) -- Push element x onto stack.
# pop() -- Removes the element on top of the stack.
# top() -- Get the top element.
# getMin() -- Retrieve the minimum element in the stack.
 

# Example 1:

# Input
# ["MinStack","push","push","push","getMin","pop","top","getMin"]
# [[],[-2],[0],[-3],[],[],[],[]]

# Output
# [null,null,null,null,-3,null,0,-2]

# Explanation
# MinStack minStack = new MinStack();
# minStack.push(-2);
# minStack.push(0);
# minStack.push(-3);
# minStack.getMin(); // return -3
# minStack.pop();
# minStack.top();    // return 0
# minStack.getMin(); // return -2
 

# Constraints:

# Methods pop, top and getMin operations will always be called on non-empty stacks.


# Solution

class MinStack
    attr_accessor :bucket

=begin
    initialize your data structure here.
=end
    def initialize()
        @bucket = []
    end


=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        @bucket << x if x        
    end


=begin
    :rtype: Void
=end
    def pop()
        @bucket.pop        
    end


=begin
    :rtype: Integer
=end
    def top()
        @bucket.last
    end


=begin
    :rtype: Integer
=end
    def get_min()
        @bucket.min
    end


end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()