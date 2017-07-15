class Problem2
  def get_largest_two_numbers(array)
    raise ArgumentError, "Array must have at least two elements." if array.size < 2

    max1, max2 = get_largest_first_two_numbers(array)

    array[2..-1].each do |num|
      next if num <= max2

      if num > max1
        max2 = max1
        max1 = num
      else
        max2 = num
      end
    end

    [max1, max2]
  end

  private

  def get_largest_first_two_numbers(array)
    array[0] > array[1] ? array[0..1] : array[0..1].reverse
  end
end