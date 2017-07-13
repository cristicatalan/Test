class Problem1
  def sum_even_numbers(array)
    array.select(&:even?).sum
  end
end