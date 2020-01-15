# remove duplicates from an array without using any library in ruby

def result_1(input)
	input | []
end

def result_2(input)
	input & input
end


input = [1, 1, 2, 2, 3, 4, 5, 'test', 'aaa', 'test', 'bbb', 'test']

puts result_1(input)

puts result_2(input)

# input = (1..rand(100)).to_a + (1..rand(100)).to_a
# Benchmark.bm do |x|
# 	x.report { result_1(input) }  
# 	x.report { result_2(input) }
# end