class Problem2
  def get_largest_two_numbers(array)
    raise "Array must have at least two elements." if array.size < 2

    if (array[1] > array[0])
      max1 = array[1]
      max2 = array[0]
    else
      max1 = array[0]
      max2 = array[1]
    end

    array[2..-1].each do |num|
      next if num <= max2

      if (num>  max1)
        max2 = max1
        max1 = num
      else
        max2 = num
      end
    end

    [max1, max2]
  end
end