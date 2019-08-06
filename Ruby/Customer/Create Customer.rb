require 'net/http'
require 'uri'

uri = URI.parse("https://sandbox.juspay.in/customers")
request = Net::HTTP::Post.new(uri)
request["Accept"] = "*/*"
request["Authorization"] = "Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg=="
request["Host"] = "sandbox.juspay.in"

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