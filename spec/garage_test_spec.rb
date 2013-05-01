require 'garage_test'


describe 'garage test' do

  let(:garage) {GarageTest.new}

  it 'creates a garage with no bikes' do
    garage.bikes.should eq []
  end

  it 'checks the state of the bike before accepting delivery' do
  	
  end

  #Needs to accpet the generic 'deliver' method...
  #Lets give it a check method

end
