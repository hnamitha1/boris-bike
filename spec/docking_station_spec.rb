
require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }


  #it 'releases working bikes' do
   # bike = subject.release_bike
   #expect(bike).to be_working
  #end

  it 'has a default capacity' do
    expect(subject.capacity) == DockingStation::DEFAULT_CAPACITY
  end

describe 'initialization' do
  it 'has a variable capacity' do
    docking_station = DockingStation.new(50)
    50.times { docking_station.dock Bike.new }
    expect{ docking_station.dock Bike.new }.to raise_error 'Docking Station is full'
  end
end

  it 'has a bike' do
    array = Array.new
    bike = Bike.new
    array << bike
    expect(subject.dock(bike)).to eq array
  end

  describe '#release_bike' do
     it 'release a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
     end
     it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # remember subject == DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'raises an error when docking station is full' do
      subject.capacity.times { subject.dock Bike.new }
      expect { subject.dock(Bike.new) }.to raise_error 'Docking Station is full'
    end



  end


end
