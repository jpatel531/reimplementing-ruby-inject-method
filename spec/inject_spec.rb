require 'inject'

describe "my inject" do 

	let(:array) {[1,2,3,4]}

	it "can sum numbers" do 
		sum = lambda {|sum, n| sum + n}
		true_inject = [1,2,3,4].inject(:+)
		expect(array.my_inject(&sum)).to eq true_inject
	end

	it "can minus numbers" do 
		dimin = lambda {|acc, n| acc - n}
		true_inject = array.inject(:-)
		expect(array.my_inject(&dimin)).to eq true_inject	
	end

	it "can take an initial value as an argument" do 
		multiply = lambda {|sum, n| sum * n}
		true_inject = [1,2,3,4].inject(5, :*)
		expect(array.my_inject(5, &multiply)).to eq true_inject
	end

	it "can take a method symbol" do 
		true_inject = array.inject(:*)
		expect(array.my_inject_with_symbol(:*)).to eq true_inject
	end

	it "can take a method symbol and parameter" do 
		true_inject = array.inject(2, :*)
		expect(array.my_inject_with_symbol(2, :*)).to eq true_inject
	end
end