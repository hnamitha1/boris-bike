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

	def return_broken_bikes
	 	bikes.select do
				|bike| bike.broken?
		end
	end

  def dock(bike)
    fail 'Docking Station is full' if full?
		# bike.return_broken_bikes
    # if bike.working?
      bikes << bike
    # else
    #   bikes_broken << bike
    # end
  end

  private



   def full?
      bikes.count >= @capacity
   end

   def empty?
   	  bikes.empty?
   end

end
