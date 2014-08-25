 require 'aeroplane'

describe Aeroplane do

  let(:plane) { Aeroplane.new }

	it 'has a flying status when created' do
    expect(plane).to be_flying
	end

	it 'has a flying status when in the air' do
    expect(plane.fly!).to be_flying
	end
end
