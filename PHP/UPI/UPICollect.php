<?php

$curl = curl_init();
$order_id="test_9069_789";

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.juspay.in/txns",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"order_id\"\r\n\r\n$order_id\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"merchant_id\"\r\n\r\naman_prod\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"payment_method_type\"\r\n\r\nUPI\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"payment_method\"\r\n\r\nUPI\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"txn_type\"\r\n\r\nUPI_COLLECT\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"upi_vpa\"\r\n\r\nsuccess@payu\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"format\"\r\n\r\njson\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"redirect_after_payment\"\r\n\r\ntrue\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW--",
  CURLOPT_HTTPHEADER => array(
    "Accept: */*",
    "Authorization: Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg==",
    "Connection: keep-alive",
    "Host: api.juspay.in",
    "accept-encoding: gzip, deflate",
    "content-length: 1002",
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
//    "txn_id": "aman_prod-test_9069_789-7",
//    "txn_uuid": "wmojrzf74adk2k3n",
//    "status": "PENDING_VBV",
//    "payment": { "authentication": { "method": "GET",
//    "url": "https://api.juspay.in/pay/start/aman_prod/wmojrzf74adk2k3n" } } }