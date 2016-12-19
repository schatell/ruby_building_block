def bubble_sort(array)

  count = 0
  first = 0
  second = 1
  temp_mem = 0

  if array.is_a? Array

    while count != array.length

      if (second < array.length) && (array[first] > array[second])
        temp_mem = array[first]
        array[first] = array[second]
        array[second] = temp_mem
        first = first + 1
        second = second + 1

      elsif (second < array.length) && (array[first] < array[second])
        first = first + 1
        second = second + 1
      else
        count = count + 1
        first = 0
        second = 1

      end
    end
  else

    puts "Can only sort an array, please enter a valid array."
  end
  array
end


bubble_sort([4,3,78,2,0,2])
