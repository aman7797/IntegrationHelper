require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/cards?customer_id=this_is_1")
request = Net::HTTP::Get.new(uri)
request.content_type = "application/x-www-form-urlencoded"
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "95a1f1fe-d41b-45c6-8c75-a72cbc808b50,9b85038d-51bd-4db2-b80a-9faf4cbbb55b"
request["User-Agent"] = "PostmanRuntime/7.15.0"

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
#     "merchantId": "aman_prod",
#     "cards": 
#     [
#     ]
#   }