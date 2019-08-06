
<?php

$curl = curl_init();
$merchant_id="aman_prod";                   //Your merchantID
$order_id="test_9069_789";                  // OrderId
$payment_method="NB_ICICI";                 //Payment_Method

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.juspay.in/txns",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"merchant_id\"\r\n\r\n$merchant_id\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"order_id\"\r\n\r\n$order_id\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"payment_method_type\"\r\n\r\nNB\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"payment_method\"\r\n\r\n$payment_method\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"redirect_after_payment\"\r\n\r\ntrue\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"format\"\r\n\r\njson\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW--",
  CURLOPT_HTTPHEADER => array(
    "Accept: */*",
    "Authorization: Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg==",
    "Cache-Control: no-cache",
    "Connection: keep-alive",
    "Host: api.juspay.in",
    ": c41bdf29-6982-4c6f-85a9-f4a30eef389f,ae0c0042-61ad-49c3-85c9-3c3a14f0785f",
    "User-Agent: PostmanRuntime/7.11.0",
    "accept-encoding: gzip, deflate",
    "cache-control: no-cache",
    "content-length: 770",
    "content-type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}

// Response 
// { "order_id": "test_9069_789",
//    "txn_id": "aman_prod-test_9069_789-4",
//    "txn_uuid": "ytuqx4qi9acbxbgi",
//    "status": "PENDING_VBV",
//    "payment": { "authentication": { "method": "POST",
//    "url": "https://secure.payu.in/_payment",
//    "params": { "key": "ua1sjJG1",
//    "txnid": "aman_prod-test_9069_789-4",
//    "amount": "1.00",
//    "productinfo": "Description not provided",
//    "email": "name@mail.com",
//    "phone": "9999999999",
//    "surl": "https://api.juspay.in/pay/response/aman_prod/ytuqx4qi9acbxbgi",
//    "furl": "https://api.juspay.in/pay/response/aman_prod/ytuqx4qi9acbxbgi",
//    "curl": "https://api.juspay.in/pay/response/aman_prod/ytuqx4qi9acbxbgi",
//    "firstname": "Firstname",
//    "lastname": "Lastname",
//    "address1": "",
//    "address2": "",
//    "city": "",
//    "state": "",
//    "country": "",
//    "zipcode": "",
//    "udf1": "",
//    "udf2": "",
//    "udf3": "",
//    "udf4": "",
//    "udf5": "",
//    "udf6": "",
//    "udf7": "",
//    "udf8": "",
//    "udf9": "",
//    "udf10": "",
//    "pg": "NB",
//    "bankcode": "ICIB",
//    "hash": "2cfc16ad32d5d868b72c09f335f445ec1942ec1761ee98a4e3ec23c970fe1f37b54ac692576493a1984b3cee7d4b6f684a39a3115c7579856f7937824f7f392e" } } } }