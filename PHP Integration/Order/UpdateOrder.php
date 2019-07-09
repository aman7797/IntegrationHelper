<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.juspay.in/orders/test_9069_789",                  //test_9069_789 is the order_id for which you want to update order
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"order_id\"\r\n\r\nord_be2b0bd2c6454635a1e2d4b25dc32be7\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"amount\"\r\n\r\n1\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW--",
  CURLOPT_HTTPHEADER => array(
    "Accept: */*",
    "Authorization: Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg==",
    "Cache-Control: no-cache",
    "Connection: keep-alive",
    "Host: api.juspay.in",
    "Postman-Token: 9dabccf0-3289-461d-b236-f013e3ae9c35,3a4e70cb-fb7e-4480-9479-23cede63107e",
    "User-Agent: PostmanRuntime/7.11.0",
    "accept-encoding: gzip, deflate",
    "cache-control: no-cache",
    "content-length: 306",
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
// { "merchant_id": "aman_prod",
//  "order_id": "test_9069_789",
//  "id": "ord_791e5040dd524eeda0d375dde4fda74c",
//  "customer_id": null,
//  "customer_email": null,
//  "customer_phone": null,
//  "product_id": "",
//  "status": "NEW",
//  "status_id": 10,
//  "amount": 1,
//  "currency": "INR",
//  "refunded": false,
//  "amount_refunded": 0,
//  "date_created": "2019-05-15T14:19:43Z",
//  "return_url": "",
//  "udf1": "",
//  "udf2": "",
//  "udf3": "",
//  "udf4": "",
//  "udf5": "",
//  "udf6": "",
//  "udf7": "",
//  "udf8": "",
//  "udf9": "",
//  "udf10": "",
//  "payment_links": { "web": "https://api.juspay.in/merchant/pay/ord_791e5040dd524eeda0d375dde4fda74c",
//  "mobile": "https://api.juspay.in/merchant/pay/ord_791e5040dd524eeda0d375dde4fda74c?mobile=true",
//  "iframe": "https://api.juspay.in/merchant/ipay/ord_791e5040dd524eeda0d375dde4fda74c" } }