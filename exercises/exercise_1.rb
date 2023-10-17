require_relative '../setup'

puts "Exercise 1"
puts "----------"

puts "Creating stores :)"

# Gets renamed to Calgary
burnaby = Store.create(
  name: "Burnaby",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
)

richmond = Store.create(
  name: "Richmond",
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
)
# Gets Deleted
gastown = Store.create(
  name: "Gastown",
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
)

stores_created_count = Store.count

puts "#{stores_created_count} stores created succesfully!"
