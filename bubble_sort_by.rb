def bubble_sort_by(list)

  (1...list.length).each do |itt|
    (0...list.length - itt).each do |index|
      if yield(list[index], list[index + 1]) > 0
        list[index], list[index + 1] = list[index + 1], list[index]
      end
    end
  end
  list
end


bubble_sort_by(["hi","hello","hey"]) do |left,right|
     left.length - right.length
   end
