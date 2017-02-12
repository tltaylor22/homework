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