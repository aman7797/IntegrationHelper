require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/orders/test_9069_789")
request = Net::HTTP::Get.new(uri)
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "52426111-4a68-4bd4-aba7-f3d8beb1d5f6,3b013641-8fdc-49a3-b936-33a0d2d66982"
request["User-Agent"] = "PostmanRuntime/7.15.0"

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
#     "customer_email": null,
#     "customer_phone": null,
#     "txn_id": "guest-test_9069_789-13",
#     "payment_method_type": "NB",
#     "currency": "INR",
#     "udf2": "",
#     "id": "ord_791e5040dd524eeda0d375dde4fda74c",
#     "status_id": 23,
#     "amount": 5,
#     "udf1": "",
#     "refunded": false,
#     "customer_id": null,
#     "udf6": "",
#     "udf5": "",
#     "amount_refunded": 0,
#     "udf4": "",
#     "udf3": "",
#     "merchant_id": "guest",
#     "auth_type": "",
#     "payment_links": {
#       "iframe": "https://api.juspay.in/merchant/ipay/ord_791e5040dd524eeda0d375dde4fda74c",
#       "web": "https://api.juspay.in/merchant/pay/ord_791e5040dd524eeda0d375dde4fda74c",
#       "mobile": "https://api.juspay.in/merchant/pay/ord_791e5040dd524eeda0d375dde4fda74c?mobile=true"
#     },
#     "order_id": "test_9069_789",
#     "bank_error_code": "",
#     "status": "PENDING_VBV",
#     "udf7": "",
#     "udf8": "",
#     "udf9": "",
#     "return_url": "",
#     "product_id": "",
#     "bank_error_message": "",
#     "txn_uuid": "ij9os7fzplzv8kbb",
#     "date_created": "2019-05-15T14:19:43Z",
#     "payment_method": "NB_ICICI",
#     "udf10": "",
#     "gateway_id": 12
#   }