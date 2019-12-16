require 'rspec'
require 'require_all'
require 'pry'
require 'tandem_challenge/schedules.txt'
require_all 'lib'

describe Schedule do
  subject { described_class.new(plant: Plant.new(name: 'Sunny', water_after: 3), calendar: Calendar.new) }

  describe '#initialize' do
    context 'after creating' do
      it 'has correct attributes' do

        # expect(subject).to have_attributes()
      end
    end
  end

  describe '.all' do
    context 'when 3 instances are initialized' do
      it 'returns all 3' do
        Schedule.new(plant: Plant.new(name: 'Bulba', water_after: 4), calendar: Calendar.new)
        Schedule.new(plant: Plant.new(name: 'Leafe', water_after: 10), calendar: Calendar.new)
        Schedule.new(plant: Plant.new(name: 'Root', water_after: 20), calendar: Calendar.new)

        expect(Schedule.all.count).to eq(3)
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

  describe '.print_schedules' do
    context 'when given all Schedule instances' do

      it 'outputs schedules for each plant' do
        a = Schedule.print_schedules
        b = schedules.txt
        # binding.pry
      end
    end
  end
end
