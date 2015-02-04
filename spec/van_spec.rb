require 'van.rb'

describe Van do

  let(:bike) {Bike.new}
  let(:van) {Van.new}
  let(:broken_bike){double :broken_bike, broken?: true}
  let(:working_bike){double :working_bike, broken?: false}
  let(:dock){double :dock, bikes:[broken_bike, working_bike], unavailable_broken_bikes:[broken_bike]}
  let(:garage) { double :garage }


  it "should be able to pick up broken bikes from dock" do
    # allow(dock.bikes).to receive(:delete)
    van.pick_up_broken_bikes_from(dock)
    expect(van.bikes).to eq [broken_bike]
  end

  it "should be able to remove bikes once collected from dock" do
    expect(dock.bikes).to receive(:delete).with(broken_bike)
    van.pick_up_broken_bikes_from(dock)
  end

  it "should be able to drop bikes at garage" do
    #let steve show us how to refactor using the "change by" in rspec
    van.dock(bike)
    expect(van.bike_count).to eq(1)
    van.release(bike)
    expect(van.bike_count).to eq(0)
  end



end


