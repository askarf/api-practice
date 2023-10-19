require "http"
puts "Welcome to Ayala's cool weather app!"
puts "Todays weather:"
puts "Enter a city"
input_city = gets.chomp

puts "Would you prefer Celcius or Farenheit?"
input_unit = gets.chomp
if input_unit == "celsius"
  unit = "metric"
elsif input_unit == "farenheit"
  unit = "imperial"
end

response = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{input_city}&lang=he&units=#{unit}&appid=#{ENV["OPEN_WEATER_API_KEY"]}")
weather_data = response.parse

temperature = weather_data["main"]["temp"]
temp_max = weather_data["main"]["temp_max"]
temp_min = weather_data["main"]["temp_min"]
feels_like = weather_data["main"]["feels_like"]
city_name = weather_data["name"]
main_weather = weather_data["weather"][0]["main"]

puts "Today in #{city_name} it is #{temperature} degrees, although it will feel like #{feels_like}. Today there will be a high of #{temp_max} degrees, and a low of #{temp_min} degrees."
