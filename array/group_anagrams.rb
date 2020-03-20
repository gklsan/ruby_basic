# Given an array of strings, group anagrams together.

# Example:

# Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
# Output:
# [
#   ["ate","eat","tea"],
#   ["nat","tan"],
#   ["bat"]
# ]
# Note:

# All inputs will be in lowercase.
# The order of your output does not matter.

# Solution 1
def group_anagrams_1(strs)
	strs.group_by do |str|
		str.downcase.chars.sort
	end.values
end

puts group_anagrams_1 ["eat", "tea", "tan", "ate", "nat", "bat"]

