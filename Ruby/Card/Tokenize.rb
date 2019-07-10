require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/card/tokenize")
request = Net::HTTP::Post.new(uri)
request.content_type = "application/x-www-form-urlencoded"
request["Accept"] = "*/*"
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "63afc848-e5ce-493c-ae05-5754dea1cf4a,c9dab00e-bc78-41a3-9f0b-921e65ba1714"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "123"
request.set_form_data(
  "card_exp_month" => "10",
  "card_exp_year" => "2020",
  "card_number" => "4111111111111111",
  "card_security_code" => "111",
  "merchant_id" => "guest",
  "name_on_card" => "ABC",
)

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
#     "token": "ctkn_zwvxwiju0q5chre1"
#   }