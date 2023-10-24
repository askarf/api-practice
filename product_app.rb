require "http"

first_product = HTTP.get("http://localhost:3000/one_product.json").parse
last_product = HTTP.get("http://localhost:3000/last_product.json").parse
all_products = HTTP.get("http://localhost:3000/all_products.json").parse

p "Welcome to my consignment shop!"
p "would you like to see the first, last or all products?"
input = gets.chomp
if input == "first"
  pp first_product
elsif input == "last"
  pp last_product
elsif input == "all"
  pp all_products
else
  p "im sorry the options are first, last or all. Please try again"
end
