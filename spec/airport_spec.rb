require 'airport'
require 'aeroplane'

describe Airport do

  let(:airport) { Airport.new   }
  let(:plane)   { Aeroplane.new }

  it 'can be initialised with a default capacity' do
    expect(airport.capacity).to eq(5)
  end

  context 'taking off and landing' do

    it 'a plane can land' do
      # once the plane has landed it goes to the hanger
      expect(airport.landing_strip(plane.land!)).to eq [plane]
    end

    it 'a plane can take off' do
      # a plane is taken from the hanger and sent to the runway
      expect(airport.runway(plane.take_off!)).to eq []
    end
  end
end
