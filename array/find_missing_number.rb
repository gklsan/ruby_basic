# How do you find the missing number in a given integer array of 1 to 100?
# For more: https://simpleprogrammer.com/programming-interview-questions/
# For more: https://gist.github.com/malchak/7575842


def missing_numbers(input)
  input.sort!
  p (input[0]..input[-1]).to_a - input
end

input = [4,5,7,3,2,8,33,22,25, 55,43,21,11]

missing_numbers(input)
