require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/txns")
request = Net::HTTP::Post.new(uri)
request.content_type = "multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW"
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "ecc445fa-9eb1-4662-823e-3852b7edb5fe,36b31353-c220-45f3-a3af-592a2cffb99a"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "926"

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    response = http.request(request)
    puts response.read_body
end

# response.code
# response.body