require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/txns")
request = Net::HTTP::Post.new(uri)
request.content_type = "multipart/form-data; boundary=--------------------------325084418650277827951904"
request["Accept"] = "*/*"
request["Host"] = "api.juspay.in"

request.set_form_data(
  "format" => "json",
  "merchant_id" => "guest",
  "order_id" => "ORD_1560355955",
  "payment_method" => "UPI",
  "payment_method_type" => "UPI",
  "redirect_after_payment" => "true",
  "txn_type" => "UPI_COLLECT",
  "upi_vpa" => "address@vpa",
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

# {"txn_uuid":"yfbld6yb9lwtdpow","txn_id":"guest-ORD_1560355955-3","status":"PENDING_VBV","payment":{"authentication":{"url":"https://api.juspay.in/pay/start/guest/yfbld6yb9lwtdpow","method":"GET"}},"order_id":"ORD_1560355955"}