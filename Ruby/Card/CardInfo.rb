require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/cardbins/524368?merchant_id=guest&options.check_mandate_support=true")
request = Net::HTTP::Get.new(uri)
request["Accept"] = "*/*"
request["Host"] = "api.juspay.in"


req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    response = http.request(request)
    puts response.read_body
end

# response.code
# response.body
# guest is used as MID

# {"id":"524368","object":"cardbin","brand":"MASTERCARD","bank":"HDFC Bank","country":"INDIA","type":"CREDIT","mandate_support":false}