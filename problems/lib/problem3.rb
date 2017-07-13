class Problem3
  def has_duplicate(array)
    for i in (0..array.size-1)
      if array[array[i] % 5] <= 5
        array[array[i] % 5] = array[array[i] % 5] + 5
      else
        return true
      end
    end

    return false
  end
end