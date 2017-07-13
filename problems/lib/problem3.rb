class Problem3
  def has_duplicate(array)
    len = array.size

    for i in (0..len-1)
      relocated_index = array[i] % len
      return true if array[relocated_index] > len

      array[relocated_index] += len
    end

    return false
  end
end
