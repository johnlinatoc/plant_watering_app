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
    final_dates = [all_dates.first]

    until num > all_dates.count do
      if weekends.include?(date)
          num += 1
          new_date = all_dates[num]

          if weekends.include?(new_date)
            num -=  2
            new_date = all_dates[num]
            final_dates << new_date
          else
            final_dates << new_date
            date = new_date
          end
      else
        final_dates << all_dates[num]
      end

      num += self.water_after
      date = all_dates[num]
    end

    final_dates
  end

  def print_schedule
  end
end

a = Schedule.new(plant: Plant.new(water_after: 3), calendar: Calendar.new)
a.print_schedule
