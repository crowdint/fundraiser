def success_ipn_params
  {
    "paymentReason"     => "PLEDGE $125 OR MORE",
    "signatureMethod"   => "RSA-SHA1",
    "transactionAmount" => "USD 125.000000",
    "transactionId"     => "1794K5NZC4NFV8AQF3PQ69I1IPHG98K3QCQ",
    "status"            => "PR",
    "buyerEmail"        => "aws@crowdint.com",
    "referenceId"       => "PLEDGE $125 OR MORE",
    "recipientEmail"    => "padillad@gmail.com",
    "transactionDate"   => "1349848849",
    "buyerName"         => "Crowd Interactive",
    "operation"         => "reserve",
    "recipientName"     => "Test Business",
    "signatureVersion"  => "2",
    "certificateUrl"    => "https://fps.sandbox.amazonaws.com/certs/090911/PKICert.pem?requestId=15n5n843ogdopypeeyc9zimnbzsj44f0eev0n0xbrobpxdl",
    "paymentMethod"     => "CC",
    "signature"         => "XwxaK5ZdQeMyq//emnLGRs+Hn6EUCHQhWy2k2qn77sdYQyc7c3kWA91I71e919keqzmcKUv18D+J\nz/Y7cW9sCw6bnl0HaI834YrNwuh6eEaG6QE4GRI/HWkUFsfWwsKPAMF1DLLeOU5L/e/TaUbPmhhC\ngOC8Kdin9QNp/kgBsWw=",
    "action"            => "create",
    "controller"        => "fundraiser/ipns"
  }
end

def invalid_ipn_params
  {
    "paymentReason"     => "PLEDGE $125 OR MORE",
    "signatureMethod"   => "RSA-SHA1",
    "transactionAmount" => "USD 125.000000",
    "transactionId"     => "1794K5NZC4NFV8AQF3PQ69I1IPHG98K3QCQ",
    "status"            => "PR",
    "buyerEmail"        => "aws@crowdint.com",
    "referenceId"       => "PLEDGE $125 OR MORE",
    "recipientEmail"    => "padillad@gmail.com",
    "transactionDate"   => "1349848849",
    "buyerName"         => "Crowd Interactive",
    "operation"         => "reserve",
    "recipientName"     => "Test Business",
    "signatureVersion"  => "2",
    "certificateUrl"    => "https://fps.sandbox.amazonaws.com/certs/090911/PKICert.pem?requestId=15n5n843ogdopypeeyc9zimnbzsj44f0eev0n0xbrobpxdl",
    "paymentMethod"     => "CC",
    "signature"         => "XWXAk5zDqEmYQ//EMNlgrS+hN6euchqHwY2k2qn77sdYQyc7c3kWA91I71e919keqzmcKUv18D+J\nz/Y7cW9sCw6bnl0HaI834YrNwuh6eEaG6QE4GRI/HWkUFsfWwsKPAMF1DLLeOU5L/e/TaUbPmhhC\ngOC8Kdin9QNp/kgBsWw=",
    "action"            => "create",
    "controller"        => "fundraiser/ipns"
  }
end
