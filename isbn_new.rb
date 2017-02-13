def isbn10_length?(isbn_num)
	if isbn_num.length == 10
		true
	else
		false
	end
end

def isbn_remove_spaces_dashes(isbn_num)
	isbn_num.delete!(' ' '-')
end

def isbn_only_digits?(isbn_num)
	if isbn_num.chop.match(/[0-9]/)
		true
	else
		false
	end
end

def check_for_x_last?(isbn_num)
	if isbn_num[-1].match(/[0-9xX]/)
		true
	else
		false
	end
end

def isbn_array(isbn_num)
	isbn_array = isbn_num.split(//)
end

def multiply_isbn(isbn_num)
	isbn_values = []
	isbn_array = isbn_num.split('')
	isbn_array.each_with_index do |value, index|
		if index < 9
			num = value.to_i * (index + 1)
			isbn_values.push(num)
		end
	end
	isbn_values
end	

def isbn10_sum(isbn_array)
	counter = 0
	isbn_array.each do |value|
		counter = counter + value # or counter += value
	end
	counter
end

def remainder(isbn10_sum)
	isbn10_sum % 11
end

