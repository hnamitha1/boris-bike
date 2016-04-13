require_relative 'bike'

class DockingStation
def initialize
	@bikes = []
end
attr_reader :bikes

  def release_bike
  	fail 'No bikes available' if @bikes.count <= 0
    @bikes.pop()
  end

  def dock(bike)
    fail 'Bike is already docked!' if @bikes.count >= 20
    @bikes.push(bike) 
  end

end
