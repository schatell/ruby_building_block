module Enumerable

  def my_each
    for element in self
      yield element
    end
  end

  def my_each_with_index
    i = 0
    while i < self.length
      yield(self[i],i)
    end
  end

  def my_select
      new_arr = Array.new
      my_each { |i| new_arr << i if yield (i) }
      new_arr
  end

  def my_all?
    self.my_select {|element| yield(element)} == self ? TRUE : FALSE
  end

  def my_any?
    self.my_select {|element| yield(element)}.size > 0 ? TRUE : FALSE
  end

  def my_none?
        self.my_select {|element| yield(element)}.size > 0 ? FALSE: TRUE
  end

	def my_count(acc = nil)
		if acc
			return self.my_select {|elem| elem == acc}.size
		end
		if block_given?
			return self.my_select {|elem| yield(elem)}.size
		else
			return my_count.size
		end
	end

	def my_map(&block)
		arr = Array.new
		if block_given?
			self.my_each do |elem|
				arr << yield(element)
				end
		else
			self.my_each do |elem|
				arr << element.block.call
				end
		end
	end
