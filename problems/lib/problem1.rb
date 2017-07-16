module Problem1
  def self.sum_even_numbers(array)
    array.select(&:even?).sum
  end
end