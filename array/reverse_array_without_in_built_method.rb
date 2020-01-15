# reverse an array without any inbuilt methods in ruby

def result(arr)
	arr.each_index.map { |i| arr[-1-i] }
end 

arr = [1, 1, 2, 2, 3, 4, 5]

result(arr)