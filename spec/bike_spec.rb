require 'bike.rb' #looks for file called bike in lib, without require test doesn't know where to look. Requiring a file is almost equivalent to just copy-pasting the contents of bike.rb

describe Bike do 										#tells which class to look at in test
	it "bike should be working after we create it" do		#it describes what we want to see happening
	bike = Bike.new
	expect(bike).to be_working	#checking that working? returns true. expect method should be used wherever possible
	end

	it "bike is broken" do
		bike = Bike.new		#creates an object of Bike class that is working when created
		expect(bike.break!).to_not be_working	#test to see if bike.working? = false use break! method to break bike
	end

	it "bike can be fixed" do	#create method to test fix
		bike = Bike.new
		bike.break!
		expect(bike.fix!).to be_working
	end
end


	