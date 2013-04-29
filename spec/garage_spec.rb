require 'garage'

describe 'garage' do

let(:garage) {Garage.new}
let(:van) {van = double :van}

it 'create a garage with no bikes' do
  garage.bikes.should eq []
end

it 'can receive a bike' do
  garage.receive(:bike1).should eq [:bike1]
end

it 'garage receives a bike from a van' do
  garage.receive(:bike1) #from.van.should eq [:bike1]
end
it 'cannot receive a bike when it has 20 bikes already'


#it 'can hold a maximum of 20 bikes'
#it 'can hold good bikes'
#it 'can hold damaged bikes'
#it 'can receive damaged bikes from vans'
#it 'can supply good bikes to van'
#it 'can fix a bike'

end
