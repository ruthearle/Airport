require 'finale'

# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!
describe "The grand finale (last spec)" do

	let(:finale)        { Finale.new                             }
	let(:flying_plane) { double :aeroplane => :flying           }
	let(:landed_plane) { double :aeroplane => :landed           }
	let(:airport)      { double :aiport, :DEFAULT_CAPACITY => 6 }
	let(:weather)      { double :weather, :condition => :stormy }


  it 'all planes can land' do
  	allow(airport).to receive(:land!)
  	allow(airport).to receive(:status)
  	expect(finale.land_multiple!(flying_plane)).to eq :landed
  end

 	 it 'all planes can take off' do
  	allow(airport).to receive(:take_off!)
  	allow(airport).to receive(:status)
  	expect(finale.take_off_multiple!(landed_plane)).to eq :flying
  end

end