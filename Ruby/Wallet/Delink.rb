require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/wallets/wlt_hvhpdhbhlssh7qdz")
request = Net::HTTP::Post.new(uri)
request["Accept"] = "*/*"
request["Authorization"] = "Basic NDQ0RTBGQjVERjk0NjMwOEIzRDY0ODgxRkRCQ0M3Og=="
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "95e4370b-2d41-44dd-93ce-d910918609d9,99cbc75f-5189-4838-bfdb-0bbc5b202eeb"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "15"
request.set_form_data(
  "command" => "delink",
)

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    response = http.request(request)
    puts response.read_body
end

# response.code
# wlt_hvhpdhbhlssh7qdz is the wallet_id

# response.body

# {
#     "id": "wlt_hvhpdhbhlssh7qdz",
#     "object": "wallet_account",
#     "wallet": "FREECHARGE",
#     "token": null,
#     "current_balance": null,
#     "linked": false,                delinked the wallet
#     "last_refreshed": null
#   }