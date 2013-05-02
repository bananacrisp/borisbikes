#Some thoughts for the design of 'methods' relationships
# The DockingStation 'rent_out' for the Person to 'rent'
# The Person 'return_rental' for the DockingStation to 'dock_bike'
# The Van 'replenish for the DockingStation to 're-stock'
# The DockingStation 'release' for the Van to 'take_away'
# The Van 'drop_off' for the Garage to 'accept'
# Garage 'push_out' for the Van to 'pick_up'

require 'van'

describe 'van' do
let(:van) {Van.new}
let(:station) {double :station, release: :bike1, re_stock: []}
let(:garage) {double :garage, accept: [], push_out: :bike10}

  it 'a van takes away a bike from a station' do
    van.take_away(station.release).should eq [:bike1]
  end

  it 'a van replenishes station with a bike?' do
  	van.take_away(:bike2)
  	van.take_away(:bike3)
    van.replenish.should eq :bike2
  end

  it 'a van can drop off a bike to the garage' do
  	van.take_away(:bike2)
  	van.take_away(:bike3)
  	van.drop_off.should eq :bike2
  end

  

end