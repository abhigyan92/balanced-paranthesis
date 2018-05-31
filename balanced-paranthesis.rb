def is_balanced?(str)
	arr = []
	str = str.split('')
	str.each do |s|
		if (s == '(') || (s == '[') || (s == '{')
			arr.push(s)
		else
			last_char = arr.pop()
			if s == ')' and last_char == '('
			elsif s == ']' and last_char == '['
			elsif  s == '}' and last_char == '{'
			else
				return false
			end
			 	 
		end
	end
	if arr.length == 0
		return true
	else
		return false
	end
end

input = gets.chomp
puts is_balanced?(input)