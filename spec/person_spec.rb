require 'person'

describe Person do
  let(:person) { Person.new }

  it 'rents a bike' do
    person.rent(:bike)
    person.bike.should eq :bike
  end

  it 'returns a bike to the docking station' do
    person.rent(:bike)

    station = double :station
    station.should_receive(:dock).with(:bike)

    person.return_bike_to(station)
  end

  it 'does not have his bike after docking' do
    person.rent(:bike)

    station = double :station, dock: nil

    person.return_bike_to station
    person.bike.should be_nil
  end
end
