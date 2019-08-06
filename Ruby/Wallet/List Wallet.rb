require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/customers/{customer_id}/wallets")
request = Net::HTTP::Get.new(uri)
request["Accept"] = "*/*"
request["Authorization"] = "Basic RjY3M0RFRTM1QzAyNEFBNkI2NzFDNTEyREVGN0U3NUM6"

request["Host"] = "api.juspay.in"
request[""] = "1680d936-7663-439d-8451-03965a2a1f78,aae5c677-8c4b-40c1-b156-bb3f88da4edd"
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
# {customer_id} this should be replaced by customer_id with which wallets are linked.

# {
#     "object": "list",
#     "list": 
#     [
#       {
#         "id": "wlt_caemyszivkomlqf2",
#         "object": "wallet_account",
#         "wallet": "FREECHARGE",
#         "token": null,
#         "current_balance": null,
#         "linked": false,
#         "last_refreshed": null
#       },
#       {
#         "id": "wlt_cfouwqztimsokrpy",
#         "object": "wallet_account",
#         "wallet": "MOBIKWIK",
#         "token": null,
#         "current_balance": null,
#         "linked": false,
#         "last_refreshed": null
#       },
#       {
#         "id": "wlt_jue6sx8cx3uqxa8y",
#         "object": "wallet_account",
#         "wallet": "FREECHARGE",
#         "token": null,
#         "current_balance": null,
#         "linked": false,
#         "last_refreshed": null
#       },
#       {
#         "id": "wlt_mqqivbewti5y9zfu",
#         "object": "wallet_account",
#         "wallet": "MOBIKWIK",
#         "token": null,
#         "current_balance": null,
#         "linked": false,
#         "last_refreshed": null
#       }
#     ],
#     "count": 4,
#     "offset": 0,
#     "total": 4
#   }