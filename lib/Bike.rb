class Bike
  def initialize
    @condition = false
  end
  
  def working?
    true
  end

  def reported_broken(condition)
    if condition == true
      @condition = true
    else
      @condition = false
    end

  end

  def broken?
    @condition
  end
end
