
require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }


  #it 'releases working bikes' do
   # bike = subject.release_bike
   #expect(bike).to be_working
  #end
  let (:bike) { double :bike, broken?: false, working?: true }
  it 'releases working bikes' do
    allow(bike).to receive(:working).and_return(true)
    subject.dock(bike)
    released_bike = subject.release_bike
    expect(released_bike).to be_working
  end

  it 'has a default capacity' do
    expect(subject.capacity) == DockingStation::DEFAULT_CAPACITY
  end

describe 'initialization' do
  it 'has a variable capacity' do
    docking_station = DockingStation.new(50)
    50.times { docking_station.dock double(:bike) }
    expect{ docking_station.dock double(:bike) }.to raise_error 'Docking Station is full'
  end
end
  let (:bike) { double :bike, broken?: false, working?: true }
  it 'has a bike' do
    bike = double(:bike)
    expect(subject.dock(bike)).to include  bike
  end

  describe '#release_bike' do
    let(:bike) { double :bike }
     it 'release a bike' do
        bike = double(:bike)
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
     end
     it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # remember subject == DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'raises an error when docking station is full' do
      subject.capacity.times { subject.dock double(:bike) }
      expect { subject.dock(double(:bike)) }.to raise_error 'Docking Station is full'
    end



  end


end
