require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/txns")
request = Net::HTTP::Post.new(uri)
request.content_type = "multipart/form-data; boundary=--------------------------702509606473835008544808"
request["Accept"] = "*/*"
request["Host"] = "api.juspay.in"

request.set_form_data(
  "format" => "json",
  "merchant_id" => "guest",
  "order_id" => "ORD_1560355955",
  "payment_method" => "UPI",
  "payment_method_type" => "UPI",
  "redirect_after_payment" => "true",
  "txn_type" => "UPI_PAY",
)

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end

# response.code
# response.body

# {
#     "order_id": "ORD_1560355955",
#     "txn_id": "guest-ORD_1560355955-4",
#     "txn_uuid": "ap1ortqtshg3frzr",
#     "status": "PENDING_VBV",
#     "payment": {
#         "authentication": {
#             "method": "GET",
#             "url": "https://api.juspay.in/pay/start/guest/ap1ortqtshg3frzr"
#         }
#     }
# }