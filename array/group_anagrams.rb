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

# Solution 2
def group_anagrams_2(strs)
    anagrams = Hash.new
    strs.each do |str|
        anagram = str.chars.sort.join
        anagrams[anagram] ||= []
        anagrams[anagram] << str
    end
    anagrams.values
end

input = ["eat", "tea", "tan", "ate", "nat", "bat"]
puts group_anagrams_1 input
puts group_anagrams_2 input

