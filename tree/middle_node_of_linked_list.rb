# Given a non-empty, singly linked list with head node head, return a middle node of linked list.

# If there are two middle nodes, return the second middle node.

 

# Example 1:

# Input: [1,2,3,4,5]
# Output: Node 3 from this list (Serialization: [3,4,5])
# The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
# Note that we returned a ListNode object ans, such that:
# ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.
# Example 2:

# Input: [1,2,3,4,5,6]
# Output: Node 4 from this list (Serialization: [4,5,6])
# Since the list has two middle nodes with values 3 and 4, we return the second one.
 

# Note:

# The number of nodes in the given list will be between 1 and 100.


# Solution 1
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}  
def middle_node(head)
    elements = [head.val]
    current_node = head
    while current_node.next != nil
        current_node = current_node.next
        elements << current_node.val
    end
    middle_index = (elements.size / 2).round
    elements[middle_index..-1]
end

# Solution 2
def middle_node(head)
    slow = head
    fast = head
    while (!fast.nil? && !fast.next.nil?)
        slow = slow.next
        fast = fast.next.next
    end
    slow
end

# Solution 3
def middle_node(head)
    return head if nil == head.next
    mid = head
    c = 1
    loop do
      break if !((head = head.next) && c += 1)
      break if !((head = head.next) && c += 1)
      
      mid = mid.next
    end
    c.even? ? mid.next : mid
end