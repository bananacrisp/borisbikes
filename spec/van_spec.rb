require 'van'

describe Van do
  let(:van) { Van.new }

  it 'picks up broken bikes from a station' do
    station = double :station
    station.should_receive(:release_broken_bikes).and_return([:bike])

    van.pickup_broken_bikes_from(station)
  end

  it 'has bikes once it picks them up from the station' do
    station = double :station, release_broken_bikes: [:bike]

    van.pickup_broken_bikes_from station
    van.bikes.should eq [:bike]
  end

  it 'returns fixed bikes to the station' do
    bike = double :bike
    station = double :station, release_broken_bikes: [bike]
    station.should_receive(:add_bikes).with([bike])
    van.pickup_broken_bikes_from station
    bike.should_receive(:broken?).and_return(false)

    van.return_bikes_to(station)
  end

  it 'has no bikes after returning them' do
    bike = double :bike, 'broken?'.to_sym => false
    station = double :station, release_broken_bikes: [bike], add_bikes: [bike]
    van.pickup_broken_bikes_from station

    van.return_bikes_to(station)
    van.bikes.should eq []
  end

end
