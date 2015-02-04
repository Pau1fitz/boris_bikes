require 'van.rb'

describe Van do

  let(:bike) {Bike.new}
  let(:van) {Van.new}
  let(:garage) { double :garage }

  it "should be able to pick up bike from dock" do
    expect(van.bike_count).to eq(0)
    van.dock(bike)
    expect(van.bike_count).to eq(1)
  end

  it "should be able to drop bikes at garage" do
    van.dock(bike)
    expect(van.bike_count).to eq(1)
    van.release(bike)
    expect(van.bike_count).to eq(0)
  end

end


