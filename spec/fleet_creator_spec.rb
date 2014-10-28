# require 'fleet_creator'
# require './aeroplane'

# class Fleet; include FleetCreator; end

# shared_examples "a fleet creator" do

# 	describe Fleet do

# 		let(fleet) { double :fleet}

# 		context 'create a fleet' do

# 			it 'is initialized as an empty array' do
# 				fleet = Fleet.new
# 				expect(fleet).to be([])
# 			end

# 			xit 'can b a fleet of six aeroplanes' do
# 				fleet = Fleet.new
# 	   	 	fleet_size = 6 
# 	    	fleet_size.times { |plane| fleet << plane = Aeroplane.new }
# 	    	expect(fleet).to eq []
# 	  	end
# 		end
# 	end
# end