require_relative 'DockingStation.rb'
require_relative 'Bike.rb'
require_relative 'BikeContainer'

class Van

  include BikeContainer

  def load_bike(bike)
    if bike.broken? == true
      @bikes << bike
    else
      raise 'This is a working bike'
    end
  end


end
