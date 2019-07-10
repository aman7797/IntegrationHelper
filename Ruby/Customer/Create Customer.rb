require 'net/http'
require 'uri'

uri = URI.parse("https://sandbox.juspay.in/customers")
request = Net::HTTP::Post.new(uri)
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Cache-Control"] = "no-cache"
request["Connection"] = "keep-alive"
request["Host"] = "sandbox.juspay.in"
request["Postman-Token"] = "6d007565-3811-4f11-bdc6-6e1131c0997a,fc5f21ae-0f5e-4050-9839-ba2f9a2709c8"
request["User-Agent"] = "PostmanRuntime/7.15.0"
request["Content-Length"] = "156"
request.set_form_data(
  "email_address" => "aman.lalpuria@juspay.in",
  "first_name" => "Aman",
  "last_name" => "Lalpuria",
  "mobile_country_code" => "91",
  "mobile_number" => "7030688664",
  "object_reference_id" => "testing_12345",
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
#     "id": "cst_kk7y2glzrcxat0cu",
#     "object": "customer",
#     "object_reference_id": "testing_12345",
#     "mobile_country_code": "91",
#     "mobile_number": "7030688664",
#     "email_address": "aman.lalpuria@juspay.in",
#     "first_name": "Aman",
#     "last_name": "Lalpuria",
#     "date_created": "2019-07-09T07:14:06Z",
#     "last_updated": "2019-07-09T07:14:06Z"
# }


# Error because object_reference_id already exist
# {
#     "status": "invalid_request_error",
#     "error_code": "unique",
#     "error_message": "Customer with given object reference id already exist for your account."
# }

# If you have enabled IP Whitelisting,
# {
#     "error_code": "bad_origin",
#     "error_message": "Bad Origin. Permission denied.",
#     "juspay_request_id": "d0a72ed6-c9bd-4ee0-80c4-ee20d84d6ecb"
#   }