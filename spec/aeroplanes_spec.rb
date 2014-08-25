 require 'aeroplane'

describe Aeroplane do

  let(:plane) { Aeroplane.new }

	it 'has a flying status when created' do
    expect(plane).to be_flying
	end

  it 'can take off' do
    expect(plane.take_off!).to be plane
  end

  it 'has a status of flying after it takes off' do
    expect(plane.flying?).to be true
  end

  it 'can land after it takes off' do
    expect(plane.land!).not_to be_flying
  end
end
