require "minitest/autorun"
require_relative "../lib/problem3"

describe Problem3 do
  before do
    @problem3 = Problem3.new
  end

  describe "given array [1, 2, 5, 4, 3]" do
    it "has no duplicate" do
      array = [1, 2, 5, 4, 3]
      has_duplicate = @problem3.has_duplicate(array)
      refute(has_duplicate)
    end
  end

  describe "given an empty array" do
    it "has no duplicate" do
      array = []
      has_duplicate = @problem3.has_duplicate(array)
      refute(has_duplicate)
    end
  end

  describe "given array [4, 1, 5, 3, 4]" do
    it "has duplicate" do
      array = [4, 1, 5, 3, 4]
      has_duplicate = @problem3.has_duplicate(array)
      assert(has_duplicate)
    end
  end

  describe "given array [6, 5, 5, 1, 6, 7, 5]" do
    it "has duplicate" do
      array = [6, 5, 5, 1, 6, 7, 5]
      has_duplicate = @problem3.has_duplicate(array)
      assert(has_duplicate)
    end
  end

  describe "given array [2, 3, 2]" do
    it "has duplicate" do
      array = [2, 3, 2]
      has_duplicate = @problem3.has_duplicate(array)
      assert(has_duplicate)
    end
  end

  describe "given array [10, 1, 2, 3, 7, 3, 7, 3, 9, 3]" do
    it "has duplicate" do
      array = [10, 1, 2, 3, 7, 3, 7, 3, 9, 3]
      has_duplicate = @problem3.has_duplicate(array)
      assert(has_duplicate)
    end
  end
end