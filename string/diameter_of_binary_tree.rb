# Given a binary tree, you need to compute the length of the diameter of the tree. The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.

# Example:
# Given a binary tree
#           1
#          / \
#         2   3
#        / \     
#       4   5    
# Return 3, which is the length of the path [4,2,1,3] or [5,2,1,3].

# Note: The length of path between two nodes is represented by the number of edges between them.


# Solution
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
@max = 0
def diameter_of_binary_tree(root)
  @max = 0
  return @max if root.nil?
  
  depth(root)
  @max
end

def depth(node)
  return 0 if node.nil?
  
  left = depth(node.left)
  right = depth(node.right)  
  curr = left + right
  @max = curr if curr > @max
  
  [left, right].max+1
end