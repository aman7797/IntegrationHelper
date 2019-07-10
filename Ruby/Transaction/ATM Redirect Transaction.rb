require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/txns")
request = Net::HTTP::Post.new(uri)
request.content_type = "application/x-www-form-urlencoded"
request["Accept"] = "*/*"
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "d054c127-46fc-4849-9be4-5e3bf0533e39,d1019ccd-6218-46e0-a9a5-fc860f4cfe56"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "161"
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