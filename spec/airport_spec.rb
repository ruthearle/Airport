require 'airport'

describe Airport do

  let(:airport) { Airport.new     }
  let(:plane)   { double :plane   }
  let(:fleet)   { double [:plane]   }
  before {allow(airport).to receive(:condition).and_return(:sunny)}


  context 'airport capacity' do

    it 'can be initialised with a default capacity' do
      expect(airport.capacity).to eq(5)
    end

    it 'can have the capacity set at anytime' do
      expect(airport.capacity=2).to eq(2)
    end
  end

  context 'taking off and landing' do

    it 'when landing at the airport the plane is told to lands' do
      expect(plane).to receive(:land!)
      airport.land!(plane)
    end

    it "when landing a plane it is added to the fleet at the airport" do
      allow(plane).to receive(:land!)
      airport.land!(plane)
      expect(airport.planes).to eq [plane]
    end

    it 'a plane can take off' do
      allow(plane).to receive(:take_off!)
      airport.take_off!(plane)
      expect(airport.planes).to eq []
    end
  end

  context 'traffic control' do

    it 'a plane cannot land if the aiport is full' do
      expect(airport).not_to be_full
      airport.capacity= 1
      allow(plane).to receive(:land!)
      airport.land!(plane)
      expect(airport.full?).to be true
    end

    it 'no aeroplanes can land if the airport is full' do
      # raise an exeception message if the airport is full
      airport.capacity= 0
      expect { airport.land!(plane) }.to raise_error "The airport is full. No clearance for landing!"
    end

      context 'weather conditions' do

        it 'a plane cannot take off if there is a storm brewing' do
          allow(airport).to receive(:condition).and_return(:stormy)
          expect { airport.take_off!(plane) }.to raise_error
        end

        it 'a plane cannot land in the middle of a storm' do
          allow(airport).to receive(:condition).and_return(:stormy)
          expect { airport.land!(plane) }.to raise_error
        end
      end

  context 'grand finale' do
    # Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
    # Be careful of the weather, it could be stormy!
    # Check when all the planes have landed that they have the right status "landed"
    # Once all the planes are in the air again, check that they have the status of flying

    it 'all planes within a fleet can land' do
      allow(plane).to receive(:fleet)
      allow(fleet).to  receive(:each)
      allow(plane).to receive(:land!)
      airport.land!(plane)
      allow(fleet).to receive(:status)
      expect(airport.fleet_landing!(fleet)).to eq [fleet.status]
    end

    it 'all planes within a fleet must return the status landed'

    
  end
end
end
