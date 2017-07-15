require "minitest/autorun"
require_relative "../lib/problem2"

describe Problem2 do
  before do
    @problem2 = Problem2.new
  end

  describe "given an array having one element" do
    it "raises error" do
      array = [1]
      err = ->{ @problem2.get_largest_two_numbers(array) }.must_raise ArgumentError
      err.message.must_equal("Array must have at least two elements.")
    end
  end

  describe "given an array having at least two elements" do
    it "returns array having two elements" do
      array = [1, 2, 3]
      maximums = @problem2.get_largest_two_numbers(array)
      maximums.size.must_equal(2)
    end
  end

  describe "given array [1, 2]" do
    it "gets maximums 2 and 1" do
      array = [1, 2]
      maximums = @problem2.get_largest_two_numbers(array)
      maximums.must_equal [2, 1]
    end
  end

  describe "given array [2, 1]" do
    it "gets maximums 2 and 1" do
      array = [2, 1]
      maximums = @problem2.get_largest_two_numbers(array)
      maximums.must_equal [2, 1]
    end
  end

  describe "given array [1, 2, 3]" do
    it "gets maximums 3 and 2" do
      array = [1, 2, 3]
      maximums = @problem2.get_largest_two_numbers(array)
      maximums.must_equal [3, 2]
    end
  end

  describe "given array [1, 2, 10, 5]" do
    it "gets maximums 10 and 5" do
      array = [1, 2, 10, 5]
      maximums = @problem2.get_largest_two_numbers(array)
      maximums.must_equal [10, 5]
    end
  end

  describe "given array [8, 14, 10, 5, 14, 9, 13, 21, 17, 7]" do
    it "gets maximum 21 and 17" do
      array = [8, 14, 10, 5, 14, 9, 13, 21, 17, 7]
      maximums = @problem2.get_largest_two_numbers(array)
      maximums.must_equal [21, 17]
    end
  end
end