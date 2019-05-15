<?php

$curl = curl_init();

$url="https://api.juspay.in/customers";
$order_refernce=rand();

curl_setopt_array($curl, array(
  CURLOPT_URL => $url,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"object_reference_id\"\r\n\r\n$order_refernce\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"mobile_number\"\r\n\r\n2444666666\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"email_address\"\r\n\r\njai@matadi.in\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"first_name\"\r\n\r\nAman \r\n------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"last_name\"\r\n\r\nLalpuria\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW--",
  CURLOPT_HTTPHEADER => array(
    "Accept: */*",
    "Authorization: Basic MzhGNERBNjhDQzQ0MTFDQjBCQ0U0REIyNjNDRTVEOg==",
    "Cache-Control: no-cache",
    "Connection: keep-alive",
    "Host: api.juspay.in",
    "Postman-Token: 676f2a74-4124-40d9-af5a-0a34dbfc93c5,be23f726-ce12-43df-9f0c-3a60e282212b",
    "User-Agent: PostmanRuntime/7.11.0",
    "accept-encoding: gzip, deflate",
    "cache-control: no-cache",
    "content-length: 674",
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
// { "id": "cst_skxqlffko9kf2x5x",
//    "object": "customer",
//    "object_reference_id": "1555955718",
//    "mobile_country_code": "91",
//    "mobile_number": "2444666666",
//    "email_address": "jai@matadi.in",
//    "first_name": "Aman ",
//    "last_name": "Lalpuria",
//    "date_created": "2019-05-15T13:49:54Z",
//    "last_updated": "2019-05-15T13:49:54Z" }