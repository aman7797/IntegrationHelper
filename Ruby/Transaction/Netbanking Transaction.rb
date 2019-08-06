require 'net/http'
require 'uri'

uri = URI.parse("https://api.juspay.in/txns")
request = Net::HTTP::Post.new(uri)
request.content_type = "application/x-www-form-urlencoded"
request["Accept"] = "*/*"
request["Host"] = "api.juspay.in"

request.set_form_data(
  "format" => "json",
  "merchant_id" => "guest",
  "order_id" => "ORD_1557929645",
  "payment_method" => "NB_ICICI",
  "payment_method_type" => "NB",
  "redirect_after_payment" => "true",
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

# {"txn_uuid":"bvu8hww80s1dwxzp","txn_id":"guest-ORD_1557929645-11","status":"PENDING_VBV","payment":{"authentication":{"url":"https://secure.payu.in/_payment","params":{"key":"ua1sjJG1","txnid":"guest-ORD_1557929645-11","amount":"1.00","productinfo":"Description not provided","email":"aman.lalpuria@juspay.in","phone":"7030688664","surl":"https://api.juspay.in/pay/response/guest/bvu8hww80s1dwxzp","furl":"https://api.juspay.in/pay/response/guest/bvu8hww80s1dwxzp","curl":"https://api.juspay.in/pay/response/guest/bvu8hww80s1dwxzp","firstname":"Firstname","lastname":"Lastname","address1":"","address2":"","city":"","state":"","country":"","zipcode":"","udf1":"","udf2":"","udf3":"","udf4":"","udf5":"","udf6":"","udf7":"","udf8":"","udf9":"","udf10":"","pg":"NB","bankcode":"ICIB","hash":"1f0d3ddeb61e32ca1906bd86f853f7b72a2606417356697da695e6dc7a2e853d34ac78ee374cc9d61fc7f8c44f563080a985aeedd60b77a372df5750ef7627fa"},"method":"POST"}},"order_id":"ORD_1557929645"}