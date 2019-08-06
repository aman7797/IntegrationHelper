<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.juspay.in/orders/test_9069_789",        //test_9069_789 order_id of which you want to check status 
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_POSTFIELDS => "",
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

// { "customer_email": null,
//    "customer_phone": null,
//    "txn_id": "aman_prod-test_9069_789-8",
//    "payment_method_type": "UPI",
//    "currency": "INR",
//    "udf2": "",
//    "id": "ord_791e5040dd524eeda0d375dde4fda74c",
//    "status_id": 20,
//    "amount": 1,
//    "udf1": "",
//    "refunded": false,
//    "customer_id": null,
//    "udf6": "",
//    "udf5": "",
//    "amount_refunded": 0,
//    "udf4": "",
//    "udf3": "",
//    "merchant_id": "aman_prod",
//    "auth_type": "",
//    "payment_links": { "iframe": "https://api.juspay.in/merchant/ipay/ord_791e5040dd524eeda0d375dde4fda74c",
//    "web": "https://api.juspay.in/merchant/pay/ord_791e5040dd524eeda0d375dde4fda74c",
//    "mobile": "https://api.juspay.in/merchant/pay/ord_791e5040dd524eeda0d375dde4fda74c?mobile=true" },
//    "order_id": "test_9069_789",
//    "bank_error_code": "",
//    "status": "STARTED",
//    "udf7": "",
//    "udf8": "",
//    "udf9": "",
//    "return_url": "",
//    "product_id": "",
//    "bank_error_message": "",
//    "txn_uuid": "eon8tw9a9akaia2g",
//    "date_created": "2019-05-15T14:19:43Z",
//    "payment_method": "UPI",
//    "udf10": "",
//    "gateway_id": 0 }