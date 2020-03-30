# Inorder tree traversal

class Node
 attr_reader :value
 attr_accessor :left, :right
 def initialize(value)
  @value = value
  @left =nil
  @right =nil
 end
end

class BsTree
	attr_reader :node

	def initialize(inputs)
		@node = Node.new(inputs.shift)
		inputs.map{|e| push_node(@node, e) }
	end

	def push_node(node, value)
		if(value > node.value)
			node.right ? push_node(node.right, value) :	(node.right = Node.new(value))
		else
			node.left ? push_node(node.left, value) : (node.left = Node.new(value))
		end
		node
	end

	def traverse (node)
		if(node==nil)
			return
		end
		if(node.left)
			traverse(node.left)
		end
		
		if(node.right)
			traverse(node.right)
		end
		p node.value
	end
end



# arr = [5,6,2,4,1,8,7,9,3];
arr = [4, 2, 5, 1, 3];
bs = BsTree.new(arr)

bs.traverse(bs.node)