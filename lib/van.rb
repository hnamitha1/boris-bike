require_relative 'docking_station'
class Van
	DEFAULT_CAPACITY = 5
	def collect_broken_bikes
		DockingStation.new.return_broken_bikes	
	end
	def  deliver_working_bikes
	end
end
