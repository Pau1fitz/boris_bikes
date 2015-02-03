require 'bike'

describe Bike do
	it "can be working" do
	bike = Bike.new
	expect(bike.working?).to eq true
	end
end
	