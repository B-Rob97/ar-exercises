require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "Calculating Revenue from ALL Stores"

@total_revenue_all_store = Store.sum("annual_revenue")
puts "TOTAL REVENUE: #{@total_revenue_all_store}$"

puts "Calculating Average Revenue of All Stores"

@stores_created_count = Store.count

@average_revenue = @total_revenue_all_store / @stores_created_count
puts "AVERAGE REVENUE: #{@average_revenue}$"
