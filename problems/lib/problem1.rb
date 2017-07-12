class Problem1
  def sum_even_numbers(array)
    sum = 0
    array.each {|num| sum+=num if num.even?}
    sum
  end
end