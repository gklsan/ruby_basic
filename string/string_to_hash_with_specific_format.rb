str = "a*b$c.x#y*z" 
h = {}
str.scan(/\w/).each_slice(3).to_a.map do |s|
	h[s[2]] = [s[0], s[1]]
end
puts h # {"c"=>["a", "b"], "z"=>["x", "y"]}