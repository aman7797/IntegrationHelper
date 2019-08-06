require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/txns")
request = Net::HTTP::Post.new(uri)
request.content_type = "application/x-www-form-urlencoded"
request["Accept"] = "*/*"
request["Host"] = "api.juspay.in"

request.set_form_data(
  "auth_type" => "ATMPIN",
  "format" => "json",
  "merchant_id" => "guest",
  "order_id" => "ORD_1557929645",
  "payment_method" => "ATM_CARD_BOB",
  "payment_method_type" => "CARD ",
  "redirect_after_payment" => "true ",
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