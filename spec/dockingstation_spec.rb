require 'dockingstation'

describe 'dockingstation' do
  let(:person) {double :person, rent: :bike1, rent_return: :bike1}
  let(:van) {double :van, drop_off: :bike4}
  let(:station) {Station.new [:bike1, :bike2, :bike3]}

  #Rent to person
  it "can rent out a bike" do
	station.rent_out.should eq :bike1
  end

  it 'after renting out a bike, there should be one less bike in the station' do
    station.rent_out
    station.bikes.should eq [:bike2, :bike3]
  end

  it 'can accept a rental return from a person' do
  	station.rent_out
  	station.rental_return(person.rent_return).should eq [:bike1, :bike2, :bike3]
  end




  #Release to van
  it 'can release a bike' do
  	station.release.should eq :bike1
  end

  it 'after releasing a bike, there should be one less bike in the station' do
  	station.release
  	station.bikes.should eq [:bike2, :bike3]
  end

  it 'can accept a bike from a van' do
  	station.replenish(van.drop_off).should eq [:bike1, :bike2, :bike3, :bike4]
  end
end

