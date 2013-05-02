require 'person'

describe 'Person' do
let(:person) {Person.new}
let(:station) {double :station, transfer_out: :bike, transfer_in: :bike}
let(:bike) {double :bike, damage: :broken_bike}
  
  it 'has no bike' do
    person.has_a_bike?.should be_false
  end
  it 'can rent a bike' do
  	station.should_receive(:transfer_out).and_return(:bike)
  	person.rent(station.transfer_out).should eq :bike
  end

  it 'a person can break a bike' do
  	bike.should_receive(:damage).and_return(:broken_bike)
  	person.crash(bike.damage).should eq :broken_bike
  end

  it 'can give a bike back to the docking station' do
  	station.should_receive(:transfer_in).and_return(:bike)
  	person.return(station.transfer_in).should eq nil
  end

end