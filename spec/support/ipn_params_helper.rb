def success_ipn_params
  {
    "paymentReason"     => "PLEDGE $125 OR MORE",
    "signatureMethod"   => "RSA-SHA1",
    "transactionAmount" => "USD 125.000000",
    "transactionId"     => "1795TCUZJ5AUEUENQIZM5C3IU1OED4MFCZ4",
    "status"            => "PR",
    "buyerEmail"        => "aws@crowdint.com",
    "referenceId"       => "3",
    "recipientEmail"    => "padillad@gmail.com",
    "transactionDate"   => "1349892077",
    "buyerName"         => "Crowd Interactive",
    "operation"         => "reserve",
    "recipientName"     => "Test Business",
    "signatureVersion"  => "2",
    "certificateUrl"    => "https://fps.sandbox.amazonaws.com/certs/090911/PKICert.pem?requestId=15n5n843ogdopypeeyc9zimnbzsj44f0eev0n0xbrobpxkg",
    "paymentMethod"     => "CC",
    "signature"         => "T6/qC+YRbp/B0Xy9pTHydvHQYE5oj991pa6ypZRlb8ydbkTp+KyRZN7x4yPHZzoWij3viEEOGPlm\nGuiMLnYdmOgBkxgERd0sYOFhZ8uzcRO7D3LarQ/8dcitShUK9inQnDUyt2do69d+bVw5d8cYbBs2\nB771bYlX6bNIEPcr2jk=",
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
    "referenceId"       => "1",
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
