<?php

$curl = curl_init();
$url="https://api.juspay.in/orders/";
$order_id=rand();
curl_setopt_array($curl, array(
  CURLOPT_URL => $url,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"order_id\"\r\n\r\n$order_id\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"amount\"\r\n\r\n1\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"currency\"\r\n\r\nINR\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"customer_id\"\r\n\r\n318036882\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"customer_email\"\r\n\r\naman.lalpuria@juspay.in\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"customer_phone\"\r\n\r\n7030688664\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"return_url\"\r\n\r\nhttps://www.google.com/\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW--",
  CURLOPT_HTTPHEADER => array(
    "Accept: */*",
    "Authorization: Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg==",
    "Cache-Control: no-cache",
    "Connection: keep-alive",
    "Host: api.juspay.in",
    "Postman-Token: f95de0f7-4867-4213-b20f-87fcc8a29948,d788a75d-1f4b-4c55-9b45-94c122f8c641",
    "User-Agent: PostmanRuntime/7.11.0",
    "accept-encoding: gzip, deflate",
    "cache-control: no-cache",
    "content-length: 903",
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
// { "status": "CREATED",
//    "status_id": 1,
//    "id": "ord_3c17d46ae53349acbc78e665a7f3f8b0",
//    "order_id": "2094559665",
//    "payment_links": { "web": "https://api.juspay.in/merchant/pay/ord_3c17d46ae53349acbc78e665a7f3f8b0",
//    "mobile": "https://api.juspay.in/merchant/pay/ord_3c17d46ae53349acbc78e665a7f3f8b0?mobile=true",
//    "iframe": "https://api.juspay.in/merchant/ipay/ord_3c17d46ae53349acbc78e665a7f3f8b0" } }