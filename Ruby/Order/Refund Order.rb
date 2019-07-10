require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/orders/ORD_1560355955/refunds")
request = Net::HTTP::Post.new(uri)
request.content_type = "multipart/form-data; boundary=--------------------------822465155100153361264842"
request["Accept"] = "*/*"
request["Authorization"] = "Basic NDQ0RTBGQjVERjk0NjMwOEIzRDY0ODgxRkRCQ0M3Og=="
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "958f6cfc-bb78-4302-ab8a-6eb016d4f2d3,b3b5fa58-c0b7-4136-b361-95468c6441d2"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "296"
request.set_form_data(
  "amount" => "1.0",
  "unique_request_id" => "asgdfhurttgs_234",
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