require 'garage'

describe 'garage' do
let(:garage) {Garage.new}
let(:bike) { double :bike, fix: :fixed_bike }
let(:van_with_bike) {double :van_with_bike, drop_off: [bike]}

it 'creates a garage with no bikes' do
	garage.bikes.should eq []
end

it 'the garage receives a bike' do
	garage.receive(bike).should eq [:fixed_bike]
end

it 'the garage receives a bike and fixes it' do
	bike.should_receive(:fix)
	garage.receive(bike).should eq [:fixed_bike]
end

it 'when the garage has one bike, it can receives another bike' do
	garage.receive(bike)
	garage.receive(bike).should eq [:fixed_bike, :fixed_bike]
end

it 'when the garage has five bikes, it can receives another bike' do
	garage.receive(bike)
	garage.receive(bike)
	garage.receive(bike)
	garage.receive(bike)
	garage.receive(bike)
	garage.receive(bike).should eq [:fixed_bike, :fixed_bike, :fixed_bike, :fixed_bike, :fixed_bike]
end

it 'the van receives a bike from a garage' do
	bike.should_receive(:fix)
	garage.receive_from(van_with_bike).should eq [:fixed_bike]
end

#it 'can hold good bikes'
#it can hold damaged bikes
#it can recieve damaged bikes from van
#it can supply good bikes to van
#it can fix a bike
	
end
