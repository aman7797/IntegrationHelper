<?php

$curl = curl_init();
$mobile_no="7030688664";
$email="aman.lalpuria%40juspay.in";
$firstName="Aman";
$lastName="Lalpuria";
$mobile_country_code="91";


curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.juspay.in/customers/cst_vsypdzjd12zypfeu",        //cst_vsypdzjd12zypfeu is the customer_id assigned at the time of customer creation
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "mobile_number=$mobile_no&email_address=$email&first_name=$firstName&last_name=$lastName&mobile_country_code=$mobile_country_code",
  CURLOPT_HTTPHEADER => array(
    "Accept: */*",
    "Authorization: Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg==",
    "Connection: keep-alive",
    "Host: api.juspay.in",
    "accept-encoding: gzip, deflate",
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

// { "id": "cst_vsypdzjd12zypfeu",
//    "object": "customer",
//    "object_reference_id": "object_reference_id_795",
//    "mobile_country_code": "91",
//    "mobile_number": "7030688664",
//    "email_address": "aman.lalpuria@juspay.in",
//    "first_name": "Aman",
//    "last_name": "Lalpuria",
//    "date_created": "2019-05-15T14:14:20Z",
//    "last_updated": "2019-05-15T15:56:46Z" }