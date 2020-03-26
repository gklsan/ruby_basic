def fact1(n)
	return 1 if n <2

	n * fact1(n-1)
end

puts fact1(5)