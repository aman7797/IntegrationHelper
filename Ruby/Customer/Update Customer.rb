require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/customers/cst_5iu9kci8tbxvne0s")
request = Net::HTTP::Post.new(uri)
request["Accept"] = "*/*"
request["Authorization"] = "Basic NDQ0RTBGQjVERjk0NjMwOEIzRDY0ODgxRkRCQ0M3Og=="
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "fe52e4b7-d66b-4ced-a3ca-bf5056faf23f,d6fbc769-770a-4918-91c4-74a39906e833"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "24"
request.set_form_data(
  "mobile_number" => "8220265687",
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
#     "id": "cst_5iu9kci8tbxvne0s",
#     "object": "customer",
#     "object_reference_id": "adsfbgj56764e",
#     "mobile_country_code": "91",
#     "mobile_number": "8220265687",
#     "email_address": "m.kyu@btau.com",
#     "first_name": "tra",
#     "last_name": "baap",
#     "date_created": "2019-06-18T07:09:34Z",
#     "last_updated": "2019-06-18T07:17:22Z"
#   }