require 'van'

describe 'van' do

it 'van picks up broken bikes' do
  van = Van.new
  
  van.has_broken_bikes?.should eq :broken_bike
end

xit 'van will have a bike after taking it for fixing' do
  station = double :station
  station.should_receive(:fix).and_return (:bike)

  van = Van.new
  van.take_broken_bikes(station)

end

xit 'can return fixed bike to station' do
  station = double :station
  station.should_receive(:return)

  van = Van.new
  van.return_bike(station)
end

xit 'station will have bike when it receives from van' do
  station = double :station
  station.should_receive(:return).with(:bike)

  van = Van.new
  van.return_bike(station)
end

end
# ~ WHAT TEST DO WE NEED ~
#it can hold no bikes
#it can hold a max of 5 bikes in total
#it can hold good bikes
#it can hold damaged bikes
#it can pick up a damaged bike from docking station
#it can drop of a damaged bike to garage
#it can pick up a good bike from garage
#it can drop off a good bike to docking station
#it can visit a specific docking station

