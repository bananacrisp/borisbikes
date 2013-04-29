require_relative '../lib/van.rb'

describe 'van' do

it 'van picks up broken bikes' do
  van = Van.new
 
  van.has_broken_bikes?.should eq :broken_bike
end

it 'van will have a bike after taking it for fixing' do
  station = double :station
  station.should_receive(:fix).and_return (:bike)

  van = Van.new
  van.take_broken_bikes(station)

end

it 'can return fixed bike to station' do
  station = double :station
  station.should_receive(:return)

  van = Van.new
  van.return_bike(station)
end

it 'station will have bike when it receives from van' do
  station = double :station
  station.should_receive(:return).with(:bike)

  van = Van.new
  van.return_bike(station)
end

end


