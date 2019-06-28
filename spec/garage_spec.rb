require 'garage'
require_relative 'master_spec'

describe Garage do
  describe '#receive_bike' do
    it 'should raise an error if the van is empty' do
      van = Van.new
      garage = Garage.new
      expect{garage.receive_bike(van)}.to raise_error 'This is an empty van'
    end
  end
end


describe Garage do
  describe 'receive_bike' do
    it 'should receive a bike' do
      van = Van.new
      garage = Garage.new
      bike = Bike.new
      bike.reported_broken(true)
      van.load_bike(bike)
      garage.receive_bike(van)
      expect(garage.bikes[-1]).to eq bike
    end
  end
end

describe  Garage do
  it_behaves_like "bike_container"
end
