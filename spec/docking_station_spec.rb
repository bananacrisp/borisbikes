require_relative '../lib/docking_station'

  describe 'docking_station' do
    let(:bike) { double :bike, broken?: false }
    let(:broken_bike) { double :bike, broken?: true }
    
    it 'docking station holds bikes' do
      station = DockingStation.new([bike, bike])
      station.stock.should eq [bike, bike] 
    end

    it 'station cannot rent if no bikes are present' do
      station = DockingStation.new
      expect {station.rent}.to raise_error
    end

    it 'dockingstation.new should release one bike' do
      station = DockingStation.new([bike, bike])
      station.rent
      station.stock.should eq [bike]
    end
   
    it 'docking station should be able to receive a bike' do
      station = DockingStation.new([bike, bike])
      station.rent
      station.rent
      station.return(bike)
      station.stock.should eq [bike]
    end

    it 'stock only shows bikes that are not broken' do
      station = DockingStation.new([broken_bike])
      station.stock.should eq [] 
    end 

    it 'shows us the broken bikes' do
      station = DockingStation.new([broken_bike])
      station.broken_bikes.should eq [broken_bike]
    end

    it 'cannot hold more bikes than the ones it was initialized with' do
      station = DockingStation.new([:bike])
      expect {station.return(:another_bike)}.to raise_error
    end
  end 
