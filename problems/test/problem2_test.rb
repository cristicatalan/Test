require "minitest/autorun"
require_relative "../lib/problem2"

class Problem2Test < MiniTest::Unit::TestCase
  def setup
    @problem2 = Problem2.new
  end

  def test_array_having_one_element_raises_exception
    array = [1]
    assert_raises("Array must have at least two elements.") {@problem2.get_largest_two_numbers(array)}
  end

  def test_array_having_at_least_two_elements_returns_array_with_two_elements
    array = [1, 2, 3]
    maximums = @problem2.get_largest_two_numbers(array)
    assert_equal(2, array.size)
  end
end