class Array

	def my_inject(*params)
		method = (params[0].is_a? Symbol) ? params[0] : params[1]
		parameter = (params[0].is_a? Symbol) ? nil : params[0]
		accumulator = (!parameter.nil?) ? parameter : self.shift
		self.each do |element|
			if block_given?
				accumulator = yield(accumulator, element)
			else
				m = accumulator.method("#{method}")
				accumulator = m.call(element)
			end	
		end
		return accumulator
	end


end