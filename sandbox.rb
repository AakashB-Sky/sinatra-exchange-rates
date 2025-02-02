require "http" # required to place HTTP requests
require "dotenv/load" # required to use .env variables
require "json" # required to turn JSON string response into hashes and arrays

# documentation on pulling full list of supported currencies (https://exchangerate.host/documentation)
# https://api.exchangerate.host/list
  # ? access_key = YOUR_ACCESS_KEY

exchange_rate_list_url = "https://api.exchangerate.host/list?access_key=#{ENV.fetch("EXCHANGE_RATE_KEY")}"

raw_response = HTTP.get(exchange_rate_list_url) # HTML query
parsed_response = JSON.parse(raw_response) # turn JSON response into arrays & hashes
# pp parsed_response

currency_list_hash = parsed_response.fetch("currencies") # isolate the currency list
# pp currency_list_hash

currency_list_array = currency_list_hash.keys # put the three-letter currency codes into an array
pp currency_list_array
