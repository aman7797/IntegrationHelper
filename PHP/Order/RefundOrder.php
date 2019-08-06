<?php

$curl = curl_init();
$amount='1';

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.juspay.in/orders/cst_vsypdzjd12zypfeu",             //cst_vsypdzjd12zypfeu is the customer you can change as per customer.
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "------WebKitFormBoundary7MA4YWxkTrZu0gW\r\nContent-Disposition: form-data; name=\"amount\"\r\n\r\n$amount\r\n------WebKitFormBoundary7MA4YWxkTrZu0gW--",
  CURLOPT_HTTPHEADER => array(
    "Accept: */*",
    "Authorization: Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg==",
    "Cache-Control: no-cache",
    "Connection: keep-alive",
    "Host: api.juspay.in",
    ": 5bdf4e31-ae0e-4bcb-9319-a6599e093171,efc442a9-67fc-49f2-aa41-54e6e989fece",
    "User-Agent: PostmanRuntime/7.11.0",
    "accept-encoding: gzip, deflate",
    "cache-control: no-cache",
    "content-length: 162",
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
//    "order_id": "cst_vsypdzjd12zypfeu",
//    "id": "ord_7bb2e44069674aa39c56f9e38ff977a1",
//    "customer_id": null,
//    "customer_email": null,
//    "customer_phone": null,
//    "product_id": "",
//    "status": "NEW",
//    "status_id": 10,
//    "amount": 1,
//    "currency": "INR",
//    "refunded": false,
//    "amount_refunded": 0,
//    "date_created": "2019-05-15T15:49:33Z",
//    "return_url": "",
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
//    "payment_links": { "web": "https://api.juspay.in/merchant/pay/ord_7bb2e44069674aa39c56f9e38ff977a1",
//    "mobile": "https://api.juspay.in/merchant/pay/ord_7bb2e44069674aa39c56f9e38ff977a1?mobile=true",
//    "iframe": "https://api.juspay.in/merchant/ipay/ord_7bb2e44069674aa39c56f9e38ff977a1" } }