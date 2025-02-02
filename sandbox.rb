require "http" # required to place HTTP requests
require "dotenv/load" # required to use .env variables
require "json" # required to turn JSON string response into hashes and arrays

# documentation on pulling full list of supported currencies (https://exchangerate.host/documentation)
# https://api.exchangerate.host/list
  # ? access_key = YOUR_ACCESS_KEY

response = HTTP.get("https://api.exchangerate.host/list?access_key=#{ENV.fetch("EXCHANGE_RATE_KEY")}")
pp response
