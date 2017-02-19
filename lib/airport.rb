require 'weather'

class Airport

  attr_reader :planes, :weather

  def initialize(weather)
    @planes = []
    @weather = weather
  end

  def request_to_land(plane)
    @planes << plane
    true
  end

  def request_take_off(plane)
    if @weather.sunny?
      @planes.delete(plane)
      true
    else
      false
    end
  end

end
