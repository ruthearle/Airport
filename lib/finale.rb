class Finale


	def land_multiple!(flying_planes)
		flying_planes.each { |plane| airport.land!(plane) }	
		flying_planes
	end

	def are_you_full?(airport)
		airport.full?
		airport.planes if airport.full?
	end

	def	take_off_multiple!(landed_planes)
			landed_planes.each { |plane| airport.take_off!(plane) }
			landed_planes
	end

	def planes_status(landed_planes)
		landed_planes.each { |plane| plane.status }
		landed_planes
	end
end
