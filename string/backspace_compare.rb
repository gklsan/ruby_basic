# Given two strings S and T, return if they are equal when both are typed into empty text editors. # means a backspace character.

# Note that after backspacing an empty text, the text will continue empty.

# Example 1:

# Input: S = "ab#c", T = "ad#c"
# Output: true
# Explanation: Both S and T become "ac".
# Example 2:

# Input: S = "ab##", T = "c#d#"
# Output: true
# Explanation: Both S and T become "".
# Example 3:

# Input: S = "a##c", T = "#a#c"
# Output: true
# Explanation: Both S and T become "c".
# Example 4:

# Input: S = "a#c", T = "b"
# Output: false
# Explanation: S becomes "c" while T becomes "b".
# Note:

# 1 <= S.length <= 200
# 1 <= T.length <= 200
# S and T only contain lowercase letters and '#' characters.
# Follow up:

# Can you solve it in O(N) time and O(1) space?

# @param {String} s
# @param {String} t
# @return {Boolean}

# Solution 1
def clean_string(str)
  str.each_char.with_object([]) {|x, y| x == '#' ? y.pop : (y << x)}.join 
end

def backspace_compare1(s, t)
    clean_string(s) == clean_string(t)
end


# Solution 2

def reduce(s, i)
  skip = 0

  loop do
    if s[i] == '#'
      skip += 1
      i -= 1
    elsif skip > 0
      skip -= 1
      i -= 1
    else
      return i
    end
  end
end

def backspace_compare2(s, t)
  i, j = s.length - 1, t.length - 1

  loop do
    i = reduce(s, i)
    j = reduce(t, j)
    
    return true if i < 0 && j < 0
    
    if s[i] != t[j]
      return false
    else
      i -= 1
      j -= 1
    end
  end
end


p backspace_compare1("ab#c", "ad#c")
p backspace_compare2("ab#c", "ad#c")

