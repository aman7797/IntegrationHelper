require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/orders/")
request = Net::HTTP::Post.new(uri)
request.content_type = "multipart/form-data; boundary=--------------------------030889148911401589245613"
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "4c1d2ba6-cbc3-4355-93b5-770973c3f81e,d5a8903d-f895-417f-b188-455266e3e5e7"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "908"
request.set_form_data(
  "amount" => "1",
  "currency" => "INR",
  "customer_email" => "aman.lalpuria@juspay.in",
  "customer_id" => "amanlalpuria",
  "customer_phone" => "7030688664",
  "order_id" => "ORD_1562749167",
  "return_url" => "https://www.google.co.in/",
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
#     "merchant_id": "BLBHIS",
#     "order_id": "ORD_1562749167",
#     "id": "ord_1622e87cb28543c58fbbf0ce83cf29a1",
#     "customer_id": "amanlalpuria",
#     "customer_email": "aman.lalpuria@juspay.in",
#     "customer_phone": "7030688664",
#     "product_id": "",
#     "status": "NEW",
#     "status_id": 10,
#     "amount": 1,
#     "currency": "INR",
#     "refunded": false,
#     "amount_refunded": 0,
#     "date_created": "2019-07-10T08:59:47Z",
#     "return_url": "https://www.google.co.in/",
#     "udf1": "",
#     "udf2": "",
#     "udf3": "",
#     "udf4": "",
#     "udf5": "",
#     "udf6": "",
#     "udf7": "",
#     "udf8": "",
#     "udf9": "",
#     "udf10": "",
#     "payment_links": {
#       "web": "https://axisbank.juspay.in/merchant/pay/ord_1622e87cb28543c58fbbf0ce83cf29a1",
#       "mobile": "https://axisbank.juspay.in/merchant/pay/ord_1622e87cb28543c58fbbf0ce83cf29a1?mobile=true",
#       "iframe": "https://axisbank.juspay.in/merchant/ipay/ord_1622e87cb28543c58fbbf0ce83cf29a1"
#     }
#   }