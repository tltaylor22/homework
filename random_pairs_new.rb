def create_random_pairs(names) # names is only a name we are using to define what we are passing through the array create_random_pairs
	array = [] # creates an empty array to hold the pushed items (names)
	array_paired_names = names.shuffle.each_slice(2) # creating the variable array_paired_names equal to names that we are passing thru, shuffling names and then slicing them into pairs.
end