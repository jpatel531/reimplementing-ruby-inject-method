class Array

	def my_inject
		accumulator = self.shift
		# self.each do |element|
		# 	accumulator += element
		# end
		self.each do |element|
			accumulator = yield(accumulator, element)
		end
		return accumulator
	end



	def my_inject_with_symbol(method)
		accumulator = self.shift
		self.each do |element| 
			m = accumulator.method("#{method}")
			accumulator = m.call(element)
		end
		return accumulator
	end

end