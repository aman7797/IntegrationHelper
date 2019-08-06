<?php

$curl = curl_init();

curl_setopt_array($curl, array(
    CURLOPT_URL => "https://api.juspay.in/cards?customer_id=this_is_1",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 30,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "GET",
    CURLOPT_HTTPHEADER => array(
        "Accept: */*",
        "Authorization: Basic MTExMTExMTExMTExMTExMTExMTExMTExMTExOg==",
        "Cache-Control: no-cache",
        "Connection: keep-alive",
        "Content-Type: application/x-www-form-urlencoded",
        "Host: api.juspay.in",
        ": 4f376b0b-1ffc-4f0c-b068-54392cead95c,2de77a2a-8ad9-4774-a7cc-b6e15dcd0597",
        "User-Agent: PostmanRuntime/7.15.0",
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

//{ "customer_id": "this_is_1", "merchantId": "guest", "cards": [ ] }