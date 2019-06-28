require 'van'
require 'master_spec'

describe Van do
  describe 'load bike' do
    it {should respond_to(:load_bike)}
  end
end

describe Van do
  describe '#load_bike' do
    it 'should raise an error' do
      bike = Bike.new
      van = Van.new
      expect{van.load_bike(bike)}.to raise_error 'This is a working bike'
    end
  end
end

describe Van do
  describe 'load_bike' do
    it 'should raise an error' do
      bike = Bike.new
      bike.reported_broken(true)
      van = Van.new
      van.load_bike(bike)
      expect(van.bikes[-1]).to eq bike
    end
  end
end

describe Van do
  it_behaves_like "bike_container"
end
