require "minitest/autorun"
require_relative "../lib/problem2"

class Problem2Test < MiniTest::Unit::TestCase
  def setup
    @problem2 = Problem2.new
  end

  def test_given_array_having_one_element_raises_exception
    array = [1]
    assert_raises("Array must have at least two elements.") {@problem2.get_largest_two_numbers(array)}
  end

  def test_given_array_having_at_least_two_elements_returns_array_with_two_elements
    array = [1, 2, 3]
    maximums = @problem2.get_largest_two_numbers(array)
    assert_equal(2, maximums.size)
  end

  def test_given_array_1_2_get_maximums_2_1
    array = [1, 2]
    maximums = @problem2.get_largest_two_numbers(array)
    assert(maximums == [2, 1])
  end

  def test_given_array__2_1__get_maximums_2_1
    array = [2, 1]
    maximums = @problem2.get_largest_two_numbers(array)
    assert(maximums == [2, 1])
  end

  def test_given_array_1_2_3_get_maximums_3_2
    array = [1, 2, 3]
    maximums = @problem2.get_largest_two_numbers(array)
    assert(maximums == [3, 2])
  end

  def test_given_array_1_2_10_5_get_maximum_10_5
    array = [1, 2, 10, 5]
    maximums = @problem2.get_largest_two_numbers(array)
    assert(maximums == [10, 5])
  end

  def test_given_array_8_14_10_5_14_9_13_21_17_7_get_maximum_10_5
    array = [8, 14, 10, 5, 14, 9, 13, 21, 17, 7]
    maximums = @problem2.get_largest_two_numbers(array)
    assert(maximums == [21, 17])
  end
end