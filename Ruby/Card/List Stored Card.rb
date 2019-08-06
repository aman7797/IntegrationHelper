require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/cards?customer_id=this_is_1")
request = Net::HTTP::Get.new(uri)
request.content_type = "application/x-www-form-urlencoded"
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Host"] = "api.juspay.in"


req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    response = http.request(request)
    puts response.read_body
end

# response.code
# response.body

# {
#     "customer_id": "this_is_1",
#     "merchantId": "guest",
#     "cards": 
#     [
#     ]
#   }