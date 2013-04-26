require 'garage'

describe 'garage' do
let(:garage) {Garage.new}
let(:garage_with_1bike) {Garage.new([:bike1])}
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

	garage.receive(bike)
end

it 'when the garage has one bike, it can receives another bike' do
	garage_with_1bike.receive(bike).should eq [:bike1, :fixed_bike]
end

it 'the garage receives a bike from a van' do
	bike.should_receive(:fix)
	garage.receive_from(van_with_bike).should eq [:fixed_bike]
end

it 'when the garage has one bike, it can receive another bike from a van' do
	garage.receive(bike)
	garage.receive_from(van_with_bike).should eq [:fixed_bike, :fixed_bike]
end

it 'cannot receive another bike when it holds 20 bikes'
#it can hold good bikes
#it can hold damaged bikes
#it can recieve damaged bikes from van
#it can supply good bikes to van
#it can fix a bike
	
end
