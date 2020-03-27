def fact1(n)
	return 1 if n <2

	n * fact1(n-1)
end


def fact2(n)
	return 1 if n < 2

	(1..n).inject(:*)
end

puts fact1(5)
puts fact2(5)