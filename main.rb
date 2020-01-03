require 'json/ext'
require_relative 'lib/periodic_table'
require_relative 'lib/element'

file = "#{__dir__}/data/elements.json"
periodic_table = PeriodicTable.from_file(file)

puts 'О каком элементе хотите узнать?'
# periodic_table.each do |symbol, element|
#   puts "#{symbol} #{element['name']} --"
#   Element.new(element, symbol)
# end
puts periodic_table 
 

 
# puts periodic_table

user_input = 'li' #STDIN.gets.chomp


puts periodic_table.show(user_input)
