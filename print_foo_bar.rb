# Write a function called FooBar that takes input integer n and prints all the numbers from 1 upto n
# in a new line. If the number is divisible by 3 then print "Foo", if the number is divisible by 5 then
# print "Bar" and if the number is divisible by both 3 and 5, print "FooBar". Otherwise just print the number.
# for example FooBar(15) should print as follows:
#  1
#  2
#  Foo
#  4
#  Bar
#  Foo
#  7
#  8
#  Foo
#  Bar
#  11
#  Foo
#  13
#  14
#  FooBar

# Solution with conditional statement
def foo_bar(n)
  n.times do |i|
    i += 1
    puts (i % 3).zero? && (i % 5).zero? ? 'FooBar' : (i % 3).zero? ? "Foo" : (i % 5).zero? ? "Bar" : i
  end
end

foo_bar(15)

# Solution with if statement
def foo_bar_with_if(n)
  n.times do |i|
    i += 1
    if (i % 3).zero? && (i % 5).zero?
      puts 'FooBar'
    elsif (i % 3).zero?
      puts "Foo"
    elsif (i % 5).zero?
      puts "Bar"
    else
      puts i
    end
  end
end

foo_bar_with_if(15)
