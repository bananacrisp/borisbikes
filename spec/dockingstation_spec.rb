require 'dockingstation'

describe 'dockingstation' do
let(:person) {double :person, rent: :bike1}
let(:station) {Station.new [:bike1, :bike2, :bike3]}

it "can rent out a bike" do
	station.rent_out.should eq :bike1
end


it 'after renting out a bike, there is one less bike in the station' do
    station.rent_out
    station.bikes.should eq [:bike2, :bike3]
   end

end