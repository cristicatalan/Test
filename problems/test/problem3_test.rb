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

  def test_empty_array_no_duplicate
    array = []
    has_duplicate = @problem3.has_duplicate(array)
    refute(has_duplicate)
  end

  def test_given_array_4_1_5_3_4_has_duplicate
    array = [4, 1, 5, 3, 4]
    has_duplicate = @problem3.has_duplicate(array)
    assert(has_duplicate)
  end

  def test_given_array_2_3_2_1_4_7_5_has_duplicate
    array = [6, 5, 5, 1, 6, 7, 5]
    has_duplicate = @problem3.has_duplicate(array)
    assert(has_duplicate)
  end

  def test_given_array_2_3_2_has_duplicate
    array = [2, 3, 2]
    has_duplicate = @problem3.has_duplicate(array)
    assert(has_duplicate)
  end

  def test_given_array_10_1_2_3_7_3_7_3_9_3_has_duplicate
    array = [10, 1, 2, 3, 7, 3, 7, 3, 9, 3]
    has_duplicate = @problem3.has_duplicate(array)
    assert(has_duplicate)
  end
end