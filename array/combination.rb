
def combination(input)
	return [] if input.blank?
	n = input.size
	res = n.times.collect{|t| [input[0], input[t+1]] if input[t+1]}.compact + combination(input[1..-1])
end

input = [5, 3, "a", 6, 3] 
combination(input).uniq # [[5, 3], [5, "a"], [5, 6], [3, "a"], [3, 6], [3, 3], ["a", 6], ["a", 3], [6, 3]] 

# or 

input.combination(2).uniq # [[5, 3], [5, "a"], [5, 6], [3, "a"], [3, 6], [3, 3], ["a", 6], ["a", 3], [6, 3]] 
