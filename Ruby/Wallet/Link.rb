require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/wallets/wlt_hvhpdhbhlssh7qdz")
request = Net::HTTP::Post.new(uri)
request.content_type = "application/x-www-form-urlencoded"
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="

request["Host"] = "api.juspay.in"
request[""] = "9b9fa052-8f97-420f-aa48-f6cd2492fcda,8c9c7c07-d7ab-455a-994a-127f6f7fafc8"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "21"
request.set_form_data(
  "command" => "link",
  "otp" => "7233",
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
#     "id": "wlt_hvhpdhbhlssh7qdz",
#     "object": "wallet_account",
#     "wallet": "FREECHARGE",
#     "token": "tkn_8430950f5d2543ca9dffa2a843afc46f",
#     "current_balance": 0,
#     "linked": true,                                       check linked change
#     "last_refreshed": "2019-07-10T11:02:45Z"
# }