require_relative 'Bike.rb'
require_relative 'van'

class DockingStation
attr_reader :bikes
DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    if empty?
      raise 'No bikes available'
    elsif @bikes[-1].broken? == true
      raise "Broken bike"
    else
      bike
    end
  end

  def dock(bike)
    if full?
      raise "Full dock"
    else
      @bikes << bike
    end
  end

  def capacity
    @capacity
  end

  def broken_pickup(van)
    if @bikes[-1].broken? == true
      van.load_bike(@bikes[-1])
      @bikes.delete_at(-1)
    else
      raise 'There are no broken bikes here'
    end
  end

  private

  def full?
    if @bikes.count >= DEFAULT_CAPACITY
      true
    else
      false
    end
  end

  def empty?
    if @bikes.count == 0
      true
    else
      false
    end
  end







end
