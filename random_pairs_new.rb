def create_random_pairs(names) # create the function create_random_pairs. names is only a name we are using to define what we are passing through the array create_random_pairs
	array = [] # creates an empty array to hold the pushed items (names)
	array_paired_names = names.shuffle.each_slice(2) # creating the variable array_paired_names equal to names that we are passing thru, shuffling names and then slicing them into pairs.
	array_paired_names.each do |pair| # iterating through the array with the variable pair (singular because it is looking at one pair each time through)
		if pair.length == 2 # if the lingth of pairs is equal to 2, then do this
			array.push pair # pushes the names into the holding array
		else
			array.last << pair # this accounts for the odd number of names pushing into the last spot in the array and creating a single name pair
		end # need an end to the if statement

	end # end for the do statement
array # return or call the array

end #end the function
