require './lib/bike_container.rb' #referecing the file that will be tested

class ContainerHolder
	include BikeContainer
end

describe BikeContainer do

	let(:bike) {Bike.new}
	let(:holder) {ContainerHolder.new}

	it "should accept a bike" do
		expect(holder.bike_count).to eq(0)
		holder.dock(bike)
		expect(holder.bike_count).to eq(1)
	end

  it "shouldnt release bike when empty" do
    expect {holder.release(bike)}.to raise_error(RuntimeError, "Station is empty")  
  end
end
