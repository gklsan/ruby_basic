# Get the 1 for 0 and 1 for 0 as output without any inbuilt methods and conditional checks

def get_opposite_binary(input)
  puts "Input: #{input} ---> Output: #{1 - input.to_i}"
end

get_opposite_binary(0)

get_opposite_binary(1)

