require 'rspec'
require 'require_all'
require 'pry'
require_all 'lib'

describe Schedule do
  plant = Plant.new(name: 'Sunny', water_after: 3)
  calendar =  Calendar.new
  subject { described_class.new(plant: plant, calendar: calendar) }

  describe '#initialize' do
    context 'after creating' do
      it 'has correct attributes' do

        expect(subject).to have_attributes(plant: plant, calendar: calendar)
      end
    end
  end

  describe '.all' do
    context 'when all instances are initialized' do
      it 'returns all instances' do
        Schedule.new(plant: Plant.new(name: 'Bulba', water_after: 4), calendar: Calendar.new)
        Schedule.new(plant: Plant.new(name: 'Leafe', water_after: 10), calendar: Calendar.new)
        Schedule.new(plant: Plant.new(name: 'Root', water_after: 20), calendar: Calendar.new)

        expect(Schedule.all.count).to eq(4)
      end
    end
  end

  describe '#watering_dates' do
    context 'when given Plant & Calender instance' do
      it 'returns valid dates' do

        expect(subject.watering_dates.count).to eq(24)
      end
    end
  end

end
