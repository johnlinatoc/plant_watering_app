require 'rspec'
require 'require_all'
require 'pry'
require_all 'lib'

describe Plant do
  subject { described_class.new(name: 'sunflower', water_after: 3) }

  describe '#initialize' do
    context 'after creating' do
      it 'has correct attributes' do
        # find way to test for incorrect key value pair upon initialization
        expect(subject).to have_attributes(:name => 'sunflower', :water_after => 3)
      end
    end
  end
end
