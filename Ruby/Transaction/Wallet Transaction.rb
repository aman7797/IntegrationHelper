require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/txns")
request = Net::HTTP::Post.new(uri)
request.content_type = "application/x-www-form-urlencoded"
request["Accept"] = "*/*"
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "bbc2a99a-eb80-4fd7-98ba-f841d6dee82b,a5307874-671f-43c1-9e66-636107d1f710"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "136"
request.set_form_data(
  "format" => "json",
  "merchant_id" => "guest",
  "order_id" => "ORD_1557929645",
  "payment_method" => "MOBIKWIK",
  "payment_method_type" => "WALLET",
  "redirect_after_payment" => "true",
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

# {"txn_uuid":"z6byjsrivfba7w4a","txn_id":"guest-ORD_1557929645-13","status":"PENDING_VBV","payment":{"authentication":{"url":"https://api.juspay.in/pay/start/guest/z6byjsrivfba7w4a","method":"GET"}},"order_id":"ORD_1557929645"}