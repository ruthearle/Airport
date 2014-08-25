require 'aeroplane'

describe Aeroplane do

	it 'when initialized is flying' do
		plane = Aeroplane.new
		expect(plane.flying).to be true
	end	
end
