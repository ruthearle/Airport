require 'airport'

describe Airport do

  context 'taking off and landing' do

    it 'a plane can land' do
      airport = Airport.new
      expect(airport).to have_runways
    end
  end
end
