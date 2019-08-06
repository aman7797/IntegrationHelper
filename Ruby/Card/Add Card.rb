require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/cards")
request = Net::HTTP::Post.new(uri)
request.content_type = "multipart/form-data; boundary=--------------------------846568079246112303700753"
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Host"] = "api.juspay.in"

request["Content-Length"] = "1015"
request.set_form_data(
  "card_exp_month" => "10",
  "card_exp_year" => "2020",
  "card_number" => "5243681100075285",
  "customer_email" => "email@email.com",
  "customer_id" => "cst_8dciauvzvafwmqg6",
  "merchant_id" => "guest",
  "name_on_card" => "VISA",
  "nickname" => "my card",
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
#     "card_token": "61471c7a-4f20-40f1-abd7-23c89737af65",
#     "card_reference": "65f47efb79bc5bcb0aa408a13ff46667",
#     "card_fingerprint": "5b6sq8se08ql2hn6lchjod5gr7"
#   }
