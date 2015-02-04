require "./lib/docking_station.rb"
  
describe Station do
let(:station) { Station.new(capacity: 100) }

  it "should allow setting default capacity on initialization" do
    expect(station.capacity).to eq(100)
  end
end