require 'van'

describe 'van' do
let(:van) {Van.new}

let(:bike) { double :bike, fix: :fixed_bike }
let(:garage_with_bike) {double :garage_with_bike, pick_up: [bike]}

it 'creates a van with no bikes' do
	van.bikes.should eq []
end

it 'the van receives a bike' do
	van.receive(bike).should eq [:fixed_bike]
end

it 'the van receives a bike and fixes it' do
	bike.should_receive(:fix)

	garage.receive(bike)
end

it 'when the van has one bike, it can receives another bike' do
	garage_with_1bike.receive(bike).should eq [:bike1, :fixed_bike]
end

it 'the van receives a bike from a van' do
	bike.should_receive(:fix)
	garage.receive_from(van_with_bike).should eq [:fixed_bike]
end

#it can hold no bikes
#it can hold a max of 5 bikes in total
#it can hold good bikes
#it can hold damaged bikes
#it can pick up a damaged bike from docking station
#it can drop of a damaged bike to garage
#it can pick up a good bike from garage
#it can drop off a good bike to docking station
#it can visit a specific docking station
	
end
