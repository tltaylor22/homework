require 'minitest/autorun'
require_relative 'isbn_new.'

class TestIsbnNew < Minitest::Test

	def test_1_equal_1
		assert_equal(1,1)
	end

	def test_10_items_true
		isbn_num = '1234567890'
		assert_equal(true, isbn10_length?(isbn_num))
	end

	def test_8_items_false
		isbn_num = '12345678'
		assert_equal(false, isbn10_length?(isbn_num))
	end

	def test_remove_spaces_isbn10
		isbn_num = '123 456 7890'
		assert_equal('1234567890', isbn_remove_spaces_dashes(isbn_num))
	end

	def test_remove_dashes_isbn10
		isbn_num = '123-456-7890'
		assert_equal('1234567890', isbn_remove_spaces_dashes(isbn_num))
	end

	def test_only_digits_true
		isbn_num = '1234567890'
		assert_equal(true, isbn_only_digits?(isbn_num))
	end

	# def test_only_digits_false
	# 	isbn_num = '123&456m97'
	# 	assert_equal(false, isbn_only_digits?(isbn_num))
	# end

	def test_if_X_or_num_last_true
		isbn_num = '877195869x'
		assert_equal(true, check_for_x_last?(isbn_num))
	end

	def test_if_X_or_num_last_false
		isbn_num = '877195869%'
		assert_equal(false, check_for_x_last?(isbn_num))
	end

	def test_string_convert_to_array
		isbn_num = '877195869x'
		assert_equal(["8", "7", "7", "1", "9", "5", "8", "6", "9", "x"], isbn_array(isbn_num))
	end

	def test_multiply_array_by_index_position
		isbn_num = '877195869x'
		assert_equal([8,14,21,4,45,30,56,48,81], multiply_isbn(isbn_num))
	end

	def test_add_value_index_totals
		isbn_array = ([8, 7, 7, 1, 9, 5, 8, 6, 9, 0])
		assert_equal(60, isbn10_sum(isbn_array))
	end

	def test_return_mod_11_0
		isbn10_sum = 11
		assert_equal(0, remainder(isbn10_sum))
	end
end

