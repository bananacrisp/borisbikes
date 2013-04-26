require 'docking_station'

describe DockingStation do
  let (:station) {DockingStation.new}

  it "create a DockingStation with no bikes" do
  	station.bikes.should eq []
  end

  it 'when populated the DockingStation holds 10 bikes and therefore is full' do
  	station.populate
  	station.bikes.should eq [:b1, :b2, :b3, :b4, :b5, :b6, :b7, :b8, :b9, :b10]
  end

  it 'the DockingStation cannot accept another bike if full?' do
  	station.populate
  	station.receive_bike?.should eq 'Sorry, this station is full'
  end

  it 'the DockingStation can release the first bike' do
    station.populate
    station.release_bike.should eq :b1
  end

  it 'the DockingStation can accept another bike if not full'do
    station.populate
    station.release_bike
    station.receive_bike?.should eq [:b2, :b3, :b4, :b5, :b6, :b7, :b8, :b9, :b10, :b11]
  end

  #it 'has a specific name'
  it 'holds no bikes (min 0)'
  #it 'holds a max of 10 damaged bikes'
  it 'can release a good bike to a person'
  #it 'can receive a good bike from a person'
  #it 'can receive a damaged bike from a person'
  #it 'can release a damaged bike to a van'
  #it 'can receive a good bike from a van'
end