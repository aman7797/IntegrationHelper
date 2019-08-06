require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/customers/cst_vsypdzjd12zypfeu/wallets")
request = Net::HTTP::Post.new(uri)
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="

request["Host"] = "api.juspay.in"

request.set_form_data(
  "command" => "authenticate",
  "gateway" => "FREECHARGE",
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