require 'van'

describe 'van' do
let(:van) {Van.new}
let(:station) {double :station, release: :bike1, receive: :bike2}

it 'can a van pick up a bike from a station' do
    van.pick_up(station.release).should eq [:bike1]
end

it 'drop off a bike' do
    van.drop_off.should eq
end

end