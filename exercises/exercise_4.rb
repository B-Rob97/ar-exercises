require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surrey = Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

whistler = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

yaletown = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

puts "All Mens Stores"
puts "--------------------------------------------------"

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts store.name
end
puts "All Womans Store with Income LESS than 1 Million"
puts "--------------------------------------------------"
@womans_stores_low_income = Store.where("womens_apparel = true AND annual_revenue < 1000000")

@womans_stores_low_income.each do |store|
  puts store.name
end
