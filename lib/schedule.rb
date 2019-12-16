require 'require_all'
require 'pry'
require_all 'lib'

class Schedule
  attr_accessor :plant, :calendar, :water_after

  @@all = []
  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
    @water_after = self.plant.water_after
  end

  def watering_dates
    all_dates = self.calendar.all_dates
    weekends = self.calendar.weekends
    num = self.water_after
    date = all_dates[num]
    watering_dates = [all_dates.first]
    binding.pry

    loop do
      if weekends.include?(date)
        new_date = date + 1
        if weekends.include?(new_date)
          watering_dates << all_dates[num - 1]
        else
          watering_dates << all_dates[num]
        end
      else
        watering_dates << date
      end
    end

  end

  def print_schedule
  end
end

a = Schedule.new(plant: Plant.new(water_after: 3), calendar: Calendar.new)
puts a.watering_dates
