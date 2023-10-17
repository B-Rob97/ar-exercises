require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"
puts "Adding employees"

store_1_employees = [
  {
    first_name: "Khurram",
    last_name: "Virani",
    hourly_rate: 60
  },
  {
    first_name: "Brett",
    last_name: "Roberts",
    hourly_rate: 60
  },
  {
    first_name: "Bob",
    last_name: "Ross",
    hourly_rate: 50
  },
  {
    first_name: "Ricky",
    last_name: "Bobby",
    hourly_rate: 200
  },
  {
    first_name: "Dwight",
    last_name: "Schrute",
    hourly_rate: 125
  },
  {
    first_name: "Peter",
    last_name: "Parker",
    hourly_rate: 115
  }
]

store_2_employees = [
  {
    first_name: "Avery",
    last_name: "Smithson",
    hourly_rate: 40
  },
  {
    first_name: "Jordan",
    last_name: "McFadden",
    hourly_rate: 45
  },
  {
    first_name: "Taylor",
    last_name: "Connors",
    hourly_rate: 42
  },
  {
    first_name: "Casey",
    last_name: "Brooks",
    hourly_rate: 45
  },
  {
    first_name: "Riley",
    last_name: "Montgomery",
    hourly_rate: 46
  },
  {
    first_name: "Alex",
    last_name: "Bennett",
    hourly_rate: 43
  },
  {
    first_name: "Jamie",
    last_name: "O'Connell",
    hourly_rate: 45
  },
  {
    first_name: "Morgan",
    last_name: "Flanagan",
    hourly_rate: 45
  },
]

@store1.employees.create(store_1_employees)
@store2.employees.create(store_2_employees)

puts "Store 1 Employees"
@store1.employees.each do |employee|
  puts employee.first_name
end
puts "-------------------"

puts "Store 2 Employees"
@store2.employees.each do |employee|
  puts employee.first_name
end
puts "-------------------"
