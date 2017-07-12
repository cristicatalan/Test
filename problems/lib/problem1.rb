class Problem1
  def sum_even_numbers(array)
    sum = 0

    array.each do |num|
      if num%2==0
        sum+=num
      end
    end

    sum
  end
end