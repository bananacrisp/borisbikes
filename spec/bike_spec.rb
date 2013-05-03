require 'bike'

describe Bike do
  let(:bike) { Bike.new }

  it 'is not broken' do
    bike.should_not be_broken
  end

  it 'can break' do
    bike.break!

    bike.should be_broken
  end

end
