 require 'aeroplane'

describe Aeroplane do

  let(:plane) { Aeroplane.new }

	it 'has a flying status when created' do
    expect(plane).to be_flying
	end

	it 'has a flying status when in the air' do
    expect(plane.fly!).to be_flying
	end

  it 'can land after flying' do
    expect(plane.land!).not_to be_flying
  end

  it 'has a status of flying when it takes off' do
    expect(plane.take_off!).to be_flying
  end
end
