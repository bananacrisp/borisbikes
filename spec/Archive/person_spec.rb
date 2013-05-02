require 'person'

describe Person do
  let(:person) { Person.new }
  let(:station) { double :station }

  it 'has no bike if he has not rented one' do
    person.has_bike?.should be_false
  end

  context 'renting' do
  
    before do
      station.should_receive(:rent).and_return(:bike)
    end

    it 'rents a bike from a docking station' do
      person.rent_bike_from(station)
    end

    it 'will have a bike after renting it' do
      person.rent_bike_from(station)
      person.has_bike?.should be_true
    end

    context 'returning' do

      before do
        station.should_receive(:return).with(:bike)
      end

      it 'can return bike to station' do
        person.rent_bike_from(station)
        person.return_bike(station)
      end

      it 'does not have a bike after returning it' do
        person.rent_bike_from(station)
        person.return_bike(station)
        person.has_bike?.should be_false
     end
  end
  end

end
