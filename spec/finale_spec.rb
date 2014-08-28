require 'finale'

# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!
describe "The grand finale (last spec)" do

	let(:finale)        { Finale.new                   }
	let(:flying_planes) { double :aeroplane => :flying }
	let(:landed_planes) { double :aeroplane => :landed }
	let(:airport)      	{ double :airport              }
	let(:weather)      	{ double :weather              }


  xit 'all planes can land' do
  	allow(airport).to receive(:land!)
  	allow(flying_planes).to receive(:each)
  	expect(finale.land_multiple!(flying_planes)).to eq flying_planes
  end

 	xit 'all planes can take off' do
  	allow(airport).to receive(:take_off!)
  	expect(landed_planes).to receive(:each)
  	expect(finale.take_off_multiple!(landed_planes)).to eq landed_planes
  end

  xit 'can check the status of all planes once they land' do
  	allow(landed_planes).to receive(:status)
  	allow(landed_planes).to receive(:each)
  	expect(finale.planes_status(landed_planes)).to eq landed_planes
  end

  xit 'when the airport is full all planes must takes off' do
    expect(airport).to receive(:full?).and_return true
    expect(finale.are_you_full?(airport)).to eq true
    allow(airport).to receive(:planes)
  end

  xit 'a plane cannot land in the middle of a storm' do
  end
end
