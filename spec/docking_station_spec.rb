require 'docking_station'

describe DockingStation do

  let(:bike) { double :bike, 'broken?'.to_sym => false }
  let(:station) { DockingStation.new [bike] }

  it 'has bikes' do
    station.bikes.should eq [bike]
  end

  it 'loans a bike to a person' do
    person = double :person

    person.should_receive(:rent).with(bike)

    station.loan_bike_to(person)
  end

  it 'has one bike less after loaning' do
    person = double :person, rent: ''

    station.loan_bike_to(person)

    station.bikes.should eq []
  end

  it 'cannot add a new bike to the station' do
    expect{station.dock :bike}.to raise_error "Station full"
  end
  
  it 'is full' do
    station.should be_full
  end

  it 'allows the docking of bikes' do
    person = double :person, rent: ''
    station.loan_bike_to(person)

    station.dock bike

    station.bikes.should eq [bike]
  end

  it 'has only working bikes available' do
    bike = double :bike
    bike.should_receive(:broken?).and_return(false)

    station = DockingStation.new [bike]

    station.bikes_available.should eq [bike]
  end

  it 'cannot rent out broken bikes' do
    bike = double :bike, 'broken?'.to_sym => true
    station = DockingStation.new [bike]
    person = double :person
    person.should_not_receive(:rent)

    station.loan_bike_to person
  end

  context 'broken bikes' do
    let(:bike) { double :bike, 'broken?'.to_sym => true }
    let(:station) { DockingStation.new [bike] }

    it 'can be released' do
      station.release_broken_bikes.should eq [bike]
    end

    it 'after releasing them will have no more broken bikes' do
      station.release_broken_bikes
      station.bikes.should eq []
    end
  end

  it 'adds bikes to the station' do
    bikes = [:bike]
    station = DockingStation.new [], 10
    station.add_bikes bikes
    station.bikes.should eq [:bike]
  end

end
