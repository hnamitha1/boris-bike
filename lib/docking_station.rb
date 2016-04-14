require_relative 'bike'

class DockingStation

DEFAULT_CAPACITY = 20

def initialize(capacity = DEFAULT_CAPACITY )
	@capacity = capacity
  @bikes = []
  @bikes_broken = []
end

attr_reader :capacity, :bikes

  def release_bike
  	fail 'No bikes available' if empty?
    bikes.pop()
       
  end

  def dock(bike)
    fail 'Docking Station is full' if full?
    if bike.broken?
      bikes_broken << bike
    else  
      bikes << bike
    end  
  end

  private



   def full?
      bikes.count >= @capacity
   end

   def empty?
   	  bikes.empty?
   end

end
