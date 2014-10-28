 require 'aeroplane'

describe Aeroplane do


  let(:plane) { Aeroplane.new }

	it 'has a flying status when created' do
    expect(plane.status).to eq :flying
	end

  it 'can take off' do
    expect(plane.land!).to be plane
  end

  it 'has a status of flying after it takes off' do
    plane.take_off!
    expect(plane.take_off!.status).to eq :flying
  end

  it 'can land after it takes off' do
    plane.take_off!
    expect(plane.land!.status).to eq :landed
  end
end
