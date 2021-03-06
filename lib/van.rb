require_relative 'bike_container'

class Van

	include BikeContainer

	def dock_all_broken_bikes_from(station)
		bikes.concat( station.release_broken_bikes )
	end

	def drop_off_broken_bikes_at(garage)
		broken_bikes.each do |broken_bike|
			bikes.delete(broken_bike)
			garage.dock(broken_bike)
		end
	end

	def dock_all_fixed_bikes_from(garage)
		bikes.concat( garage.release_fixed_bikes )
	end

	def drop_off_fixed_bikes_at(station)
		station.bikes.concat( release_fixed_bikes )
	end

end