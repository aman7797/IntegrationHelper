<?php

$curl = curl_init();
$url="https://api.juspay.in/customers/";
$url .= "cst_vsypdzjd12zypfeu";                                //Customer ID, the one which is created by CreateCustomer
curl_setopt_array($curl, array(
  CURLOPT_URL => $url,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_POSTFIELDS => "",
  CURLOPT_HTTPHEADER => array(
    "Accept: */*",
    "Authorization: Basic NDQ0RTBGQjVERjk0NjMwOEIzRDY0ODgxRkRCQ0M3Og==",
    "Cache-Control: no-cache",
    "Connection: keep-alive",
    "Host: api.juspay.in",
    "Postman-Token: 9bb00144-88f7-4b39-975c-c6f321c19264,9a9f3e9a-39c7-4bd7-84a1-25dbbf8e99bb",
    "User-Agent: PostmanRuntime/7.11.0",
    "accept-encoding: gzip, deflate",
    "cache-control: no-cache"
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
// {
//   "id": "cst_vsypdzjd12zypfeu",
//   "object": "customer",
//   "object_reference_id": "object_reference_id_795",
//   "mobile_country_code": "91",
//   "mobile_number": "2444666666",
//   "email_address": "jai@matadi.in",
//   "first_name": "Aman ",
//   "last_name": "Lalpuria",
//   "date_created": "2019-05-15T14:14:20Z",
//   "last_updated": "2019-05-15T14:14:20Z"
// }