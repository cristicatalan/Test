class Problem2
  def get_largest_two_numbers(array)
    raise "Array must have at least two elements." if array.size < 2

    max1 = array[1]
    max2 = array[0]
    maximums = [max1, max2]
  end
end