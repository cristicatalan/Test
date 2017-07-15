require "minitest/autorun"
require_relative "../lib/problem1"

class Problem1Test < MiniTest::Unit::TestCase
  def test_given_empty_array_sum_is_zero
    array = []
    sum = Problem1.sum_even_numbers(array)
    assert_equal(0, sum)
  end

  def test_given_array_3_5_6_8_11_sum_of_even_numbers_is_14
    array = [ 3, 5, 6, 8, 11 ]
    sum = Problem1.sum_even_numbers(array)
    assert_equal(14, sum)
  end

  def test_given_only_odd_numbers_array_sum_of_even_numbers_is_0
    array = [ 3, 5, 11, 9, 21 ]
    sum = Problem1.sum_even_numbers(array)
    assert_equal(0, sum)
  end
end