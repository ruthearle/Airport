require 'airport'
require 'aeroplane'

describe Airport do

  let(:airport) { Airport.new     }
  let(:plane)   { double :plane   }
  let(:weather) { double :weather => :stormy }

  context 'airport capacity' do

    it 'can be initialised with a default capacity' do
      expect(airport.capacity).to eq(5)
    end

    it 'can have the capacity set at anytime' do
      expect(airport.capacity=2).to eq(2)
    end
  end

  context 'taking off and landing' do

    it 'a plane can land' do
      allow(plane).to receive(:land!)
      # once the plane has landed it goes to the hanger
      expect(airport.land!(plane)).to eq [plane]
    end

    it 'a plane can take off' do
      allow(plane).to receive(:take_off!)
      # a plane is taken from the hanger and sent to the runway
      expect(airport.take_off!(plane)).to eq []
    end
  end

  context 'traffic control' do

    it 'a plane cannot land if the aiport is full' do
      expect(airport).not_to be_full
       airport.capacity= 0
      expect(airport).to be_full
    end

    it 'no aeroplanes can land if the airport is full' do
      # raise an exeception message if the airport is full
      airport.capacity= 0
      expect { airport.land!(plane) }.to raise_error
    end

      context 'weather conditions' do

        it 'a plane cannot take off if there is a storm brewing' do
          allow(weather).to receive(:condition).and_return(:stormy)
          expect { airport.take_off!(plane) }.to raise_error
        end

        it 'a plane cannot land in the middle of a storm' do
          allow(weather).to receive(:condition).and_return(:stormy)
          expect { airport.land!(plane) }.to raise_error
        end
      end
  end
end
