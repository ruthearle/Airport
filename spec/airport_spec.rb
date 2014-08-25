require 'airport'
require 'aeroplane'

describe Airport do

  let(:airport) { Airport.new   }
  let(:plane)   { Aeroplane.new }

  context 'airport capacity' do

    it 'can be initialised with a default capacity' do
      expect(airport.capacity).to eq(5)
    end

    it 'can have the capacity set at anytime' do
      expect(airport.capacity(2)).to eq(2)
    end
  end

  context 'taking off and landing' do

    it 'a plane can land' do
      # once the plane has landed it goes to the hanger
      expect(airport.land(plane)).to eq [plane]
    end

    it 'a plane can take off' do
      # a plane is taken from the hanger and sent to the runway
      expect(airport.runway(plane.take_off!)).to eq []
    end
  end

  context 'traffic control' do


    it 'a plane cannot land if the aiport is full' do
      expect(airport).not_to be_full
      Airport::DEFAULT_CAPACITY.times {airport.land(plane) }
      expect(airport).to be_full
    end

    it 'no aeroplanes can land if the airport is full' do
      # raise an exeception message if the airport is full
      airport.capacity= 0
      expect { airport.land(plane) }.to raise_error#(RuntimeError, 'The airport full. No clearance to land!')
    end

  end
end
