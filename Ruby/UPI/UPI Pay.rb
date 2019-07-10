require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/txns")
request = Net::HTTP::Post.new(uri)
request.content_type = "multipart/form-data; boundary=--------------------------702509606473835008544808"
request["Accept"] = "*/*"
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "5fc3f2c8-0f1b-453b-a590-3a67ffc2f08d,db64eecd-6dcc-41f1-8e58-4b81a24a9d98"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "881"
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