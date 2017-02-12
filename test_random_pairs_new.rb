require 'minitest/autorun'
require_relative 'random_pairs_new.rb'

class TestRandomPairs < Minitest::Test

	def test_two_names_equals_one_pair
		pairs = create_random_pairs(['Tim', 'April'])
		assert_equal(1, pairs.count)
	end


end