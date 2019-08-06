require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/wallets/wlt_hvhpdhbhlssh7qdz")
request = Net::HTTP::Post.new(uri)
request.content_type = "application/x-www-form-urlencoded"
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="

request["Host"] = "api.juspay.in"
request[""] = "3459a65b-0599-4145-bd61-bb1596f9d5c3,ee1ff97d-f47e-41b3-b9b8-6da5c6c17852"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "15"
request.set_form_data(
  "command" => "refresh",
)

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    response = http.request(request)
    puts response.read_body
end

# response.code

# wlt_hvhpdhbhlssh7qdz - this is the wallet_id

# response.body


# {
#     "id": "wlt_hvhpdhbhlssh7qdz",
#     "object": "wallet_account",
#     "wallet": "FREECHARGE",
#     "token": "tkn_517b6f046e1a40298f4dc0db714b8e0a",
#     "current_balance": 0,                               it will tell you the balance of the wallet
#     "linked": true,
#     "last_refreshed": "2019-07-10T11:07:31Z"
#   }