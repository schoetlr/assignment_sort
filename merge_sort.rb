def merge_sort(array)
  return array if array.length == 1
  mid_point = arr.length / 2

  left = array[0..mid_point]
  right = array[(mid_point + 1)..-1]

  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)

  merge(sorted_left, sorted_right)

end



def merge(left, right)
  new_array = []
  lptr, rptr = 0, 0

  if 

end