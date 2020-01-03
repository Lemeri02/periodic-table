require 'json/ext'
require_relative 'lib/periodic_table'
require_relative 'lib/element'

file = "#{__dir__}/data/elements.json"
periodic_table = PeriodicTable.from_file(file)

puts 'О каком элементе хотите узнать? (Введите символ элемента латинскими буквами):'

periodic_table.elements.each do |symbol, element|
  puts "#{symbol} (#{element['name']})"
end

user_input = STDIN.gets.chomp

selected_element = periodic_table.get_element(user_input)

if selected_element
  element = Element.new(selected_element)
  puts element
else
  puts 'Элемент еще не добавлен в таблицу или не открыт!'
end
