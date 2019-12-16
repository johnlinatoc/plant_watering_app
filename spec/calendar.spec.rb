require 'rspec'
require 'require_all'
require 'pry'
require_all 'lib'

describe Calendar do
  subject { described_class.new }

  describe '#all_dates' do
    context 'when given start date' do
      it 'returns every date for 12 weeks' do

        expect(subject.all_dates.first).to be_a(Date)
        expect(subject.all_dates.count).to eq(84)
      end
    end
  end

  describe '#weekends' do
    context 'when given array of dates in 12-week span' do
      it 'returns all weekend dates'do

        expect(subject.weekends.first).to be_a(Date)
        expect(subject.weekends.count).to eq(24)
      end
    end
  end
end
