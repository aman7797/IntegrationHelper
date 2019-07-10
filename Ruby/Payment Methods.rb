require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/merchants/aman_prod/paymentmethods")
request = Net::HTTP::Post.new(uri)
request["Accept"] = "*/*"
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "0cd6744d-d023-48f8-9417-d7cff02b0a1e,653c42e2-c779-46f8-a1ba-245006eeb656"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = ""

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
#     "payment_methods": [
#         {
#             "payment_method_type": "NB",
#             "payment_method": "NB_HDFC",
#             "description": "HDFC Bank"
#         },
#         {
#             "payment_method_type": "CARD",
#             "payment_method": "MAESTRO",
#             "description": "Maestro"
#         },
#         {
#             "payment_method_type": "CARD",
#             "payment_method": "JCB",
#             "description": "JCB"
#         }
#     ]
# }