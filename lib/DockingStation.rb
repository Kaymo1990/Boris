require_relative 'Bike.rb'

class DockingStation
attr_reader :bike
DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bike_dock = []
  end

  def release_bike
    if empty?
      raise 'No bikes available'
    elsif @bike_dock[-1].broken? == true
      raise "Broken bike"
    else
      bike
    end
  end

  def dock(bike)
    if full?
      raise "Full dock"
    else
      @bike_dock << bike
    end
  end

  def capacity
    @capacity
  end

  private

  def full?
    if @bike_dock.count >= DEFAULT_CAPACITY
      true
    else
      false
    end
  end

  def empty?
    if @bike_dock.count == 0
      true
    else
      false
    end
  end



end
