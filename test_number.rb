require 'minitest/autorun'
require_relative 'numbers.rb'

class TestNumber < Minitest::Test
# taking a string of numbers, convert to an array of integers and sums the array

	def test_string_of_numbers
		assert_equal(1,numbers('1'))
	end

end