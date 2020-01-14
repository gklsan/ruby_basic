# How do you find the duplicate number on a given integer array?

def get_duplicate_number(input)
  p input.reduce(Hash.new(0)) { |h, v| h.store(v, h[v] + 1); h }.select{|k,v| v > 1}.keys

  # or

  p input.group_by(&:itself).select{|k, v| v.size > 1}.keys
end

input = [1,2,3,3,3,2,4,5,6,7,7]

get_duplicate_number(input)
