require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/orders/ORD_1560355955")
request = Net::HTTP::Post.new(uri)
request.content_type = "application/x-www-form-urlencoded"
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "fc46dfb1-c744-43a8-99e7-e832acdfce96,668a3a06-4164-4e8b-b50f-3c42e8561591"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "10"
request.set_form_data(
  "amount" => "1.0",
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
#   "merchant_id": "aman_prod",
#   "order_id": "ORD_1560355955",
#   "id": "ord_3a35f9c6526a4a7b9cd2322a2dee7a58",
#   "customer_id": null,
#   "customer_email": null,
#   "customer_phone": null,
#   "product_id": "",
#   "status": "NEW",
#   "status_id": 10,
#   "amount": 1,
#   "currency": "INR",
#   "refunded": false,
#   "amount_refunded": 0,
#   "date_created": "2019-07-10T09:03:55Z",
#   "return_url": "",
#   "udf1": "",
#   "udf2": "",
#   "udf3": "",
#   "udf4": "",
#   "udf5": "",
#   "udf6": "",
#   "udf7": "",
#   "udf8": "",
#   "udf9": "",
#   "udf10": "",
#   "payment_links": {
#     "web": "https://api.juspay.in/merchant/pay/ord_3a35f9c6526a4a7b9cd2322a2dee7a58",
#     "mobile": "https://api.juspay.in/merchant/pay/ord_3a35f9c6526a4a7b9cd2322a2dee7a58?mobile=true",
#     "iframe": "https://api.juspay.in/merchant/ipay/ord_3a35f9c6526a4a7b9cd2322a2dee7a58"
#   }
# }