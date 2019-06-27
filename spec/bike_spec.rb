require './lib/Bike.rb'
describe Bike do
  it 'working?' do
end
end

describe Bike do
  describe 'broken?' do
    it 'check return true' do
      bike = Bike.new
      expect(bike.broken?).to eq false
    end
  end
end

 describe Bike do
   describe 'reported_broken' do
     it 'changes the condition of the bike' do
       bike = Bike.new
       bike.reported_broken(true)
       expect(bike.broken?).to eq true
     end
   end
 end

 describe Bike do
   describe 'broken?' do
     it 'check return true' do
       bike = double(:bike)
       allow(bike).to receive(:broken?).and_return(false)
       expect(bike.broken?).to eq false
     end
   end
 end
