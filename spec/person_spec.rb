require 'person'

# ~ WHAT TEST DO WE NEED ~
#it has no bike
#it can rent a good bike (max 1)
#it can damage a bike
#it can return a good bike
#it can return a damaged bike

describe 'person' do
let(:new_person) {Person.new}
	it 'person has no bike' do
		new_person.has_bike?.should be_false
	end

	it 'person has rents a bike' do
		new_person.bike(:car)
		new_person.has_bike?.should be_true
	end

	it "person gives a bike back" do
		new_person.bike(:lorry)
		new_person.give_bike_back.should eq :lorry
	end
	it "a person has given bike back so they have no bike" do
		new_person.bike(:lorry)
		new_person.give_bike_back
		new_person.has_bike?.should be_false
	end
end