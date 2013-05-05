#Some thoughts for the design of 'methods' relationships
# The DockingStation 'rent_out' for the Person to 'rent'
# The Person 'return_rental' for the DockingStation to 'dock_bike'
# The Van 'replenish for the DockingStation to 're-stock'
# The DockingStation 'release' for the Van to 'take_away'
# The Van 'drop_off' for the Garage to 'accept'
# Garage 'push_out' for the Van to 'pick_up'

require 'garage_test'


describe 'garage test' do

  let(:garage) {GarageTest.new}
  let(:van) {double :van, drop_off: :bike, pick_up: []}  
  let(:bike) {double :bike}
  it 'creates a garage with no bikes' do
    garage.bikes.should eq []
  end

  it 'can accept a bike from van' do
    garage.accept(van.drop_off).should eq [:bike]
  end
 
  it 'can push out a bike for the van to pick up' do
    garage.accept(:bike)
    garage.accept(:bike) 
    garage.push_out.should eq :bike
  end
  
  it 'can repair bikes is garage' do
    garage.accept(:bike)
    garage.fix.should eq [:bike]
  end

end
