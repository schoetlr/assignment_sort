def bubble_sort(array)
  sorted = false

  until sorted
    sorted = true
    (0..array.length-2).each do |i|
      if array[i] > array[i+1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end

  end
  array

end


p bubble_sort [2,5,2,8,4,3,1]