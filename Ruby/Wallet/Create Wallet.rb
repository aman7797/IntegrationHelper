require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/customers/cst_vsypdzjd12zypfeu/wallets")
request = Net::HTTP::Post.new(uri)
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "44459f2d-0d00-4c5e-8b54-10944145732c,f84dedc8-4288-4e13-b17b-aa2c9ec6e6e4"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "39"
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