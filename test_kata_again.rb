require 'minitest/autorun'
require_relative 'kata_again.rb'

class TestKataAgain < Minitest:: Test

	def test_create_variable_number_set_to_1
		number = 1
		assert_equal(1, kata_again(number))
	end

	def test_adding_from_1_to_100
		number = 1
		assert_equal(100, kata_again(number))
	end	
		
	end