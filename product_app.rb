require "http"
require "tty-table"

# all_products = HTTP.get("http://localhost:3000/products.json").parse

# p "Welcome to my consignment shop!"
# p "would you like to see a specific item or a display of all of them??"
# input = gets.chomp
# if input == "specific"
#   puts "which id would you like to see?"
#   input_id = gets.chomp.to_i
#   specific_product = HTTP.get("http://localhost:3000/products/#{input_id}.json").parse
#   pp specific_product
# elsif input == "all"
#   pp all_products
# else
#   p "im sorry the options are specific or all, please try again"
# end

puts "you are creating a new item"
puts "enter name:"
input_name = gets.chomp
puts "enter price:"
input_price = gets.chomp
puts "enter image url:"
input_url = gets.chomp
puts "enter description:"
input_description = gets.chomp

response = HTTP.post("http://localhost:3000/products.json", :form => {
                                                              :name => input_name,
                                                              :price => input_price,
                                                              :image_url => input_url,
                                                              :description => input_description,

                                                            })
