require 'garage.rb'

describe Garage do
  
  let(:bike) {Bike.new}
  let(:broken_bike) {Bike.new.break!}
  let(:garage) {Garage.new}

  it "fixes bikes when docked" do
   garage.accept(broken_bike)
   expect(broken_bike).not_to be_broken
  
  end  

end