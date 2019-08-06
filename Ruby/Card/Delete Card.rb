require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/card/delete")
request = Net::HTTP::Post.new(uri)
request.content_type = "application/x-www-form-urlencoded"
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Host"] = "api.juspay.in"

request.set_form_data(
  "card_token" => "f3708ac7-91f5-4f83-89ed-47657e5fe031",
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
#     "card_token": "f3708ac7-91f5-4f83-89ed-47657e5fe031",
#     "deleted": true
# }