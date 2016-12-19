def cypher(string, number)
  string.scan(/./) do |i|
  if("A".."Z").include? (i.upcase)
    number.times {i = i.next}
    end
    print i[-1]
  end
end

cypher("Cypher", 5)
