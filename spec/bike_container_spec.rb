require 'bike_container'

describe 'When included' do
  include BikeContainer

  it 'is full' do
    @max = 0
    @bikes = []

    full?.should be_true
  end

end
