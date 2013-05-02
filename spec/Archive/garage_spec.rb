require 'garage'
require 'garage_test'

describe 'garage' do

	let(:garage) {Garage.new}
	let(:van) {double :van}

	it 'create a garage with no bikes' do
	  garage.bike.should eq []
	end

	it 'receives broken bikes, fixes them, then transfers them in' do
	  garage.receive(:jimmysbike)
	  garage.receive(:bike).should eq [:fixed_bike, :fixed_bike]
	end

	it 'transfers out fixed bikes' do
		garage.receive(:jimmysbike)
		garage.receive(:jimmysbike)
		garage.receive(:jimmysbike)
		garage.receive(:jimmysbike)
		garage.receive(:jimmysbike)
		garage.transfer_out.should eq [:fixed_bike, :fixed_bike, :fixed_bike, :fixed_bike]
	end

	it 'makes fixed bikes available for collection' do
		garage.receive(:jimmysbike)
		garage.receive(:jimmysbike)
		garage.receive(:jimmysbike)
		garage.receive(:jimmysbike)
		garage.receive(:jimmysbike)
		garage.gives.should eq [:fixed_bike, :fixed_bike, :fixed_bike, :fixed_bike]
	end

	xit 'garage receives a bike from a van' do
	end
	xit 'cannot receive a bike when it has 20 bikes already'
	#it 'can hold a maximum of 20 bikes'
	#it 'can hold good bikes'
	#it 'can hold damaged bikes'
	#it 'can receive damaged bikes from vans'
	#it 'can supply good bikes to van'
	#it 'can fix a bike'
end
