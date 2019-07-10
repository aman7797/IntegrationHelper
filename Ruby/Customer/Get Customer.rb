require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/customers/cst_vsypdzjd12zypfeu")
request = Net::HTTP::Get.new(uri)
request.content_type = "application/x-www-form-urlencoded"
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "api.juspay.in"
request["Postman-Token"] = "d81b3c1f-847a-421e-ae53-7526a7d76a92,5ec1896e-23a1-4261-b41f-d720abb7da62"
request["User-Agent"] = "PostmanRuntime/7.15.0"

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
#     "id": "cst_vsypdzjd12zypfeu",
#     "object": "customer",
#     "object_reference_id": "object_reference_id_795",
#     "mobile_country_code": "91",
#     "mobile_number": "7030688664",
#     "email_address": "aman.lalpuria@juspay.in",
#     "first_name": "Aman",
#     "last_name": "Lalpuria",
#     "date_created": "2019-05-15T14:14:20Z",
#     "last_updated": "2019-05-15T15:56:46Z"
#   }