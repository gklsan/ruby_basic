# Write a program to find the first non-repeated character in a String

def result_1(str)
	str.chars{|c| str.count(c) == 1 ? (puts c; break) : '' }
end

def result_2(str)
	str.chars.find { |character| string.count(character) == 1 }
end

def result_3(str)
	str.chars.detect { |character| string.count(character) == 1 }
end

str = 'this is a test from gklsan'
result_1(str)
result_2(str)
result_3(str)