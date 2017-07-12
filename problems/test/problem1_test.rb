require "minitest/autorun"
require_relative "../lib/problem1"

class Problem1Test < MiniTest::Unit::TestCase
  def setup
    @problem1 = Problem1.new
  end

  def test_given_empty_array_sum_is_zero
    array = []
    sum = @problem1.sum_even_numbers(array)
    assert_equal(0, sum)
  end
end