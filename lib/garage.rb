require_relative 'van'
require_relative 'Bike'
require_relative 'BikeContainer'

class Garage
  include BikeContainer

  def receive_bike(van)
    if van.bikes.empty? == false
      @bikes << van.bikes[-1]
      van.bikes.delete_at(-1)
    else
      raise 'This is an empty van'
    end
  end



end
