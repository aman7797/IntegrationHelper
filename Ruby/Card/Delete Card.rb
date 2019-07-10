require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/card/delete")
request = Net::HTTP::Post.new(uri)
request.content_type = "application/x-www-form-urlencoded"
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "efff0c94-9026-4544-9b15-2377a8481ffa,89b7f9f8-d76d-4008-91e7-9efb46d9b4fa"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "47"
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