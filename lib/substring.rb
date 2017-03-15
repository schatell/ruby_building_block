def substrings (starting_string,arr)
  enumerator = {}

  arr.each do |word|
    counting_array = starting_string.downcase.scan(word)
    count = counting_array.count
    if count > 0
      enumerator[word] = count
    end
  end
  return enumerator


end




dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
