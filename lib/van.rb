require_relative 'docking_station'
class Van
	def collect_broken_bikes
		bikes = DockingStation.new
		bikes.bikes.pop
	end	
	def  deliver_working_bikes
	end	
end