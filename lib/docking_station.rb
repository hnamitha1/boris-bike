require_relative 'bike'

class DockingStation
def initialize
	@bikes = []
end
attr_reader :bikes

  def release_bike
  	fail 'No bikes available' if empty?
    @bikes.pop()
  end

  def dock(bike)
    fail 'Bike is already docked!' if full?
    @bikes.push(bike) 
  end

  private

   def full?
      @bikes.count >= 20 
   end	

   def empty?
   	   @bikes.count <= 0
   end	   

end
