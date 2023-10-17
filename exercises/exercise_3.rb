require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

puts "Storing store 3 into an instance variable!"
puts "--------------------------------------"

stores_created_count_1 = Store.count
puts "There are #{stores_created_count_1} stores active"

@store3 = Store.find(3)
@store3.destroy



stores_created_count_2 = Store.count
puts "There are #{stores_created_count_2} stores active"
