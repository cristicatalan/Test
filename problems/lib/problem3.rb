class Problem3
  def has_duplicate(array)
    for i in (0..array.size-1)
      relocated_index = array[i] % 5
      return true if array[relocated_index] > 5

      array[relocated_index] = array[relocated_index] + 5
    end

    return false
  end
end