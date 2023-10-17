require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Name


valid_name_input = false
user_store_name = nil
until valid_name_input
  puts "Please enter the name of your store (* Min 3 character length *):"
  print "> "
  user_store_name = gets.chomp.to_s

  if user_store_name.length >= 3
    valid_name_input = true
  else
    puts "Invalid input. Please ensure you enter a name with at least 3 characters."
  end
end

# Revenue
def is_integer?(string)
  string.to_i.to_s == string
end

valid_revenue_input = false
user_store_revenue = nil

until valid_revenue_input
  puts "Please enter the revenue from your store (* Must be an integer *):"
  print "> "
  user_store_revenue = gets.chomp

  if is_integer?(user_store_revenue)
    valid_revenue_input = true
  else
    puts "Invalid input. Please ensure you enter a number for the annual revenue."
  end
end

user_store_revenue = user_store_revenue.to_i

# Mens Apparel
valid_mens_apparel_input = false
user_store_mens_apparel = nil
until valid_mens_apparel_input
  puts "Does your store carry mens apparal (* Enter 'Yes' or 'No' *):"
  print "> "
  user_store_mens_apparel = gets.chomp.to_s

  if (user_store_mens_apparel == "Yes")
    valid_mens_apparel_input = true
    user_store_mens_apparel = true
  elsif (user_store_mens_apparel == "No")
    valid_mens_apparel_input = true
    user_store_mens_apparel = false
  else
    valid_mens_apparel_input = false
    puts "Invalid input, Please enter 'Yes' or 'No'"
  end
end

if user_store_mens_apparel == false
  puts "❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗"
  puts "Please note: Your store needs to offer either men's or women's apparel. If it doesn't, the store cannot be created, and you'll need to start the process over. Thank you for understanding"
  puts "❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗❗"
end

# Womans Apparel
valid_womens_apparel_input = false
user_store_womens_apparel = nil
until valid_womens_apparel_input

  puts "Does your store carry womens apparal (* Enter 'Yes' or 'No' *):"
  print "> "


  user_store_womens_apparel = gets.chomp.to_s

  if (user_store_womens_apparel == "Yes")
    user_store_womens_apparel = true
    valid_womens_apparel_input = true
  elsif (user_store_womens_apparel == "No")
    user_store_womens_apparel = false
    valid_womens_apparel_input = true
  else
    puts "Invalid input, Please enter 'Yes' or 'No'"
    valid_womens_apparel_input = false
  end
end

# Create Store with user inputs
@user_store = Store.create(
  name: user_store_name,
  annual_revenue: user_store_revenue,
  mens_apparel: user_store_mens_apparel,
  womens_apparel: user_store_womens_apparel
)

if @user_store.valid?
  puts "Store was created successfully."
else
  puts "Error(s) prevented store from being saved:"
  @user_store.errors.full_messages.each do |message|
    puts message
  end
end
