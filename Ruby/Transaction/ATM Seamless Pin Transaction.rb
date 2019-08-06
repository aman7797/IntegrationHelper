require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/txns")
request = Net::HTTP::Post.new(uri)
request["Accept"] = "*/*"
request["Host"] = "api.juspay.in"

request.set_form_data(
  "auth_type" => "ATMPIN ",
  "card_exp_month" => "10 ",
  "card_exp_year" => "20 ",
  "card_number" => "5243681100075285 ",
  "card_security_code" => "111 ",
  "format" => "json",
  "merchant_id" => "guest",
  "name_on_card" => "Name ",
  "order_id" => "ORD_1557929645",
  "payment_method" => "MASTERCARD ",
  "payment_method_type" => "CARD ",
  "redirect_after_payment" => "true ",
  "save_to_locker" => "true ",
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

# {"txn_uuid":"r9xgzbjpbeh2khmx","txn_id":"guest-ORD_1557929645-15","status":"PENDING_VBV","payment":{"authentication":{"url":"https://api.juspay.in/pay/start/guest/r9xgzbjpbeh2khmx","method":"GET"}},"order_id":"ORD_1557929645"}