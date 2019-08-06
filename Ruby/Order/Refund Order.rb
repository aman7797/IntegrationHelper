require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/orders/ORD_1560355955/refunds")
request = Net::HTTP::Post.new(uri)
request.content_type = "multipart/form-data; boundary=--------------------------822465155100153361264842"
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Host"] = "api.juspay.in"

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