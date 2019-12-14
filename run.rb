require 'json'

file = File.read('data.json')
data_hash = JSON.parse(file)
puts data_hash
