require "http"

first_product = HTTP.get("http://localhost:3000/first_product.json")
last_product = HTTP.get("http://localhost:3000/last_product.json")
all_products = HTTP.get("http://localhost:3000/all_products.json")

p "would you like"
input = gets.chomp
