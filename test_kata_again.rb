require 'minitest/autorun'
require_relative 'kata_again.rb'

class TestKataAgain < Minitest:: Test

	def test_1_returns_1
		assert_equal(1, kata_again(1))
	end

	def test_2_returns_2
		assert_equal(1, kata_again(1))
	end

	def test_3_returns_mined
		assert_equal('mined', kata_again(3))
	end

	def test_5_returns_minds
		assert_equal('minds', kata_again(5))
	end	

	def test_15_returns_minedminds
		assert_equal('mined minds', kata_again(15))
	end

end