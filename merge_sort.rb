def merge_sort(array)
  len = array.length
  return array if len == 1
  mid_point = len == 2 ? 0 : len / 2

  left = array[0..mid_point]
  right = array[(mid_point + 1)..-1]

  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)

  merge(sorted_left, sorted_right)

end



def merge(left, right)
  new_array = []
  lptr, rptr = 0, 0

  while (lptr < left.length) && (rptr < right.length)
    if left[lptr] < right[rptr]
      new_array.push(left[lptr])
      lptr += 1
    else
      new_array.push(right[rptr])
      rptr += 1
    end
  end

  while lptr < left.length
    new_array.push(left[lptr])
    lptr += 1
  end

  while rptr < right.length
    new_array.push(right[rptr])
    rptr += 1
  end

  new_array
end

puts merge_sort([1,3,7,2,5]) == [1,2,3,5,7]