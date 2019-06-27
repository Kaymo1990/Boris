require './lib/DockingStation.rb'
describe DockingStation do
  #it { is_expected.to respond_to :release_bike } Check if there is a method
  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      station = DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
end
describe DockingStation do
  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      station = DockingStation.new
      #we want to release the bike we docked
      expect {station.release_bike}.to raise_error "No bikes available"
    end
  end
end

describe DockingStation do
  describe '#release_bike' do
    it 'Message of broken bike' do
      bike = Bike.new
      bike.reported_broken(true)
      station = DockingStation.new
      station.dock(bike)
      expect {station.release_bike}.to raise_error 'Broken bike'
    end
  end
end

describe DockingStation do
  describe '#release_bike' do
    it 'Message of broken bike' do
      bike = Bike.new
      bike.reported_broken(true)
      station = DockingStation.new
      station.dock(bike)
      bike2 = Bike.new
      station.dock(bike2)
      bike3 = Bike.new
      bike3.reported_broken(true)
      station.dock(bike3)
      expect {station.release_bike}.to raise_error 'Broken bike'
    end
  end
end

#  it { is_expected.to respond_to(:dock).with(1).argument }
#  it 'docks some bike' do
#    bike = Bike.new
    # we want to return the bike we docked
#    expect(subject.dock(bike)).to eq bike
#  end

  #it { is_expected.to respond_to(:bike) }
  #it 'return docked bikes' do
  #  bike = Bike.new
  #  subject.dock(bike)
  #  expect(subject.bike).to eq bike
  #end



describe DockingStation do
  describe '#dock' do
    it 'If dock over 20 is full' do
      station = DockingStation.new
      20.times { station.dock(Bike.new)}
      expect {station.dock double(:bike)}.to raise_error 'Full dock'
    end
  end
end


describe 'initialize' do
  it 'Checking default' do
    station = DockingStation.new
    expect(station.capacity).to eq 20
  end
end


describe 'initialize' do
  it 'Checking default' do
    station = DockingStation.new(30)
    expect(station.capacity).to eq 30
  end
end

describe DockingStation do
  describe '#release_bike' do
    let(:bike) { double :bike }
    it 'Message of broken bike' do
      allow(bike).to receive(:broken?).and_return(true)
      station = DockingStation.new
      station.dock(bike)
      expect {station.release_bike}.to raise_error 'Broken bike'
    end
  end
end

#describe DockingStation do
#it { should respond_to()}
#end
