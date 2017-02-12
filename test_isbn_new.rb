require 'minitest/autorun'
require_relative 'isbn_new.'

class TestIsbnNew < Minitest::Test

	def test_1_equal_1
		assert_equal(1,1)
	end

	def test_10_digits_true
		isbn_num = '1234567890'
		assert_equal(true, isbn10_length?(isbn_num))
	end

	def test_8_digits_false
		isbn_num = '12345678'
		assert_equal(false, isbn10_length?(isbn_num))
	end	

end

