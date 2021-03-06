require 'minitest/autorun'
require_relative 'random_pairs_new.rb'

class TestRandomPairs < Minitest::Test

	def test_two_names_equals_one_pair
		pairs = create_random_pairs(['Tim', 'April'])
		assert_equal(1, pairs.count)
	end
	
	def test_four_names_equals_two_pair
		pairs = create_random_pairs(['Tim', 'April', 'Marv', 'Dan'])
		assert_equal(2, pairs.count)
	end

	def test_seven_names_equals_three_pair
		pairs = create_random_pairs(['Chad', 'Shirley', 'Chole', 'Tim', 'April', 'Marv', 'Dan'])
		assert_equal(3, pairs.count)
	end

	def test_eight_names_equals_four_pair
		pairs = create_random_pairs(['Chad', 'Shirley', 'Chole', 'Tim', 'April', 'Marv', 'Dan', 'Tom'])
		assert_equal(4, pairs.count)
	end

	def test_nine_names_equals_four_pair
		pairs = create_random_pairs(['Chad', 'Shirley', 'Chole', 'Tim', 'April', 'Marv', 'Dan', 'Tom', 'Kevin'])
		assert_equal(4, pairs.count)
		print pairs
	end

end