require "http"
require "tty-table"

all_products = HTTP.get("http://localhost:3000/products.json").parse

p "Welcome to my consignment shop!"
p "would you like to see a specific item or a display of all of them??"
input = gets.chomp
if input == "specific"
  puts "which id would you like to see?"
  input_id = gets.chomp.to_i
  specific_product = HTTP.get("http://localhost:3000/products/#{input_id}.json").parse
  pp specific_product
elsif input == "all"
  pp all_products
else
  p "im sorry the options are specific or all, please try again"
end

#never finished making a table so this is just blank w data
# table = TTY::Table.new(["Item", "Price"], [["a1", "a2"], ["b1", "b2"]])
# p table.render(:ascii)
