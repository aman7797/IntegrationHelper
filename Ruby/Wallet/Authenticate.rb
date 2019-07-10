require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/wallets/wlt_hvhpdhbhlssh7qdz")
request = Net::HTTP::Post.new(uri)
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "febfaa43-55f1-43e4-8e16-5a3589e83b7c,0fe11020-88a4-4965-8066-42a6ab536f3f"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "20"
request.set_form_data(
  "command" => "authenticate",
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
#     "token": null,
#     "current_balance": null,
#     "linked": false,
#     "last_refreshed": null
#   }