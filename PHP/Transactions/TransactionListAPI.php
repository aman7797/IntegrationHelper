<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "https://api.juspay.in/orders/test_9069_789/txns",         //test_9069_789 is the order for which transaction list needed
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
    "accept-encoding: gzip, deflate"
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
// { "list": [ { "txn_id": "aman_prod-test_9069_789-3",
//             "order_id": "test_9069_789",
//             "txn_uuid": "v19u47alscrtwoyu",
//             "gateway_id": 12,
//             "status": "PENDING_VBV",
//             "gateway": "PAYU",
//             "express_checkout": false,
//             "redirect": true,
//             "net_amount": 1,
//             "surcharge_amount": null,
//             "tax_amount": null,
//             "txn_amount": 1,
//             "currency": "INR",
//             "error_message": "",
//             "error_code": "",
//             "created": "2019-05-15T14:44:32Z",
//             "txn_object_type": "ORDER_PAYMENT",
//             "source_object": null,
//             "source_object_id": null,
//             "is_conflicted": false,
//             "is_emi": false,
//             "emi_tenure": 0,
//             "emi_bank": null,
//             "payment_info": { "payment_method_type": "NB",
//             "payment_method": "NB_ICICI",
//             "auth_type": "" },
//  "payment_gateway_response": { },
//  "refunds": [ ] },
//  { "txn_id": "aman_prod-test_9069_789-2",
//      "order_id": "test_9069_789",
//      "txn_uuid": "fw7c5eljtrhdqyls",
//      "gateway_id": 0,
//      "status": "STARTED",
//      "gateway": null,
//      "express_checkout": false,
//      "redirect": true,
//      "net_amount": 1,
//      "surcharge_amount": null,
//      "tax_amount": null,
//      "txn_amount": 1,
//      "currency": "INR",
//      "error_message": "",
//      "error_code": null,
//      "created": "2019-05-15T14:41:29Z",
//      "txn_object_type": "ORDER_PAYMENT",
//      "source_object": null,
//      "source_object_id": null,
//      "is_conflicted": false,
//      "is_emi": false,
//      "emi_tenure": 0,
//      "emi_bank": null,
//      "payment_info": { "payment_method_type": "NB",
//      "payment_method": "NB_DUMMY",
//      "auth_type": "" },
//  "payment_gateway_response": { },
//  "refunds": [ ] },
//  { "txn_id": "aman_prod-test_9069_789-1",
//      "order_id": "test_9069_789",
//      "txn_uuid": "fbdwmatbq8wfs6nn",
//      "gateway_id": 0,
//      "status": "STARTED",
//      "gateway": null,
//      "express_checkout": false,
//      "redirect": true,
//      "net_amount": 1,
//      "surcharge_amount": null,
//      "tax_amount": null,
//      "txn_amount": 1,
//      "currency": "INR",
//      "error_message": "",
//      "error_code": null,
//      "created": "2019-05-15T14:37:38Z",
//      "txn_object_type": "ORDER_PAYMENT",
//      "source_object": null,
//      "source_object_id": null,
//      "is_conflicted": false,
//      "is_emi": false,
//      "emi_tenure": 0,
//      "emi_bank": null,
//      "payment_info": { "payment_method_type": "NB",
//      "payment_method": "NB_DUMMY",
//      "auth_type": "" },
//  "payment_gateway_response": { },
//  "refunds": [ ] } ],
//  "count": 3,
//  "offset": 0,
//  "total": 3 }