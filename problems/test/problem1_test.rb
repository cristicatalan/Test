require "minitest/autorun"
require_relative "../lib/problem1"

describe Problem1, "sum of even numbers" do
  describe "given an empty array" do
    it "should be zero" do
      array = []
      sum = Problem1.sum_even_numbers(array)
      sum.must_equal(0)
    end
  end

  describe "given array [3, 5, 6, 8, 11]" do
    it "should be 14" do
      array = [ 3, 5, 6, 8, 11 ]
      sum = Problem1.sum_even_numbers(array)
      sum.must_equal(14)
    end
  end

  describe "given only odd numbers array" do
    it "should be 0" do
      array = [ 3, 5, 11, 9, 21 ]
      sum = Problem1.sum_even_numbers(array)
      sum.must_equal(0)
    end
  end
end