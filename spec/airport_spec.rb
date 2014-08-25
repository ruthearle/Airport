require 'airport'
require 'aeroplane'

describe Airport do

  context 'taking off and landing' do

    it 'a plane can land' do
      airport = Airport.new
      plane = Aeroplane.new
      plane.land!
      expect(airport.runway(plane)).to eq [plane]
    end

    it 'a plane can take off' do
      airport = Airport.new
      plane = Aeroplane.new
      plane.take_off!
      expect(airport.taxiway(plane)).to eq[plane]
    end
  end
end
