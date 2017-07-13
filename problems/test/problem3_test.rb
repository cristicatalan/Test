require "minitest/autorun"
require_relative "../lib/problem3"

class Problem3Test < MiniTest::Unit::TestCase
  def setup
    @problem3 = Problem3.new
  end

  def test_given_array_1_2_5_4_3_no_duplicate
    array = [1, 2, 5, 4, 3]
    has_duplicate = @problem3.has_duplicate(array)
    refute(has_duplicate)
  end
end