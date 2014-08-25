require 'airport'
require 'aeroplane'

describe Airport do

    it 'can be initialised with a default capacity' do
      airport = Airport.new
      expect(airport.capacity).to eq(5)
    end

  context 'taking off and landing' do

    it 'a plane can land' do
      airport = Airport.new
      plane = Aeroplane.new
      plane.land!
      expect(airport.runway(plane)).to eq [plane]
    end
  end
end
