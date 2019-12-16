require 'json'
require 'pry'
require 'require_all'
require_all 'lib'

file = File.read('data.json')
data_hash = JSON.parse(file)

data_hash.each do |plant|
  new_plant = Plant.new(name: plant["name"], water_after: plant["water_after"].split(' ').first.to_i)
  Schedule.new(plant: new_plant, calendar: Calendar.new)
end

Schedule.print_schedules
