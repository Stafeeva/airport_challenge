class Plane

  attr_reader :airport

  def initialize(airport = nil)
    @airport = airport
  end

  def land(airport)
    if airport.request_to_land(self)
      @airport = airport
      true
    end
  end

  def take_off(airport)
    if airport.request_take_off(self)
      @airport = nil
      true
    end
  end


end
