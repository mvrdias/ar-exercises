require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

### Exercise 7: Validations for both models

# 2. Ask the user for a store name (store it in a variable)
# 3. Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
# 4. Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record


puts "Please enter a store name:"
print "=> "
store_name = gets.chomp

@store7 = Store.create(name: store_name, annual_revenue: 250, mens_apparel: false, womens_apparel: true)
messages = @store7.errors.full_messages

messages.each do |error|
  puts "Error! #{error}"
end