#!/bin/bash

# Make a curl request using the ngrok URL
curl -X 'POST' \
  "https://47b5-2a01-11-9210-5210-d860-93a4-fdd6-90aa.eu.ngrok.io/agent/didManagerCreate" \
  -H 'accept: application/json; charset=utf-8' \
  -H 'Authorization: Bearer test123' \
  -H 'Content-Type: application/json' \
  -d '{
  "alias": "mediatorDid",
  "provider": "did:peer",
  "kms": "local",
  "options": {"num_algo":2 , "service" : {"id":"#didcomm-0","type":"DIDCommMessaging","serviceEndpoint": "https://47b5-2a01-11-9210-5210-d860-93a4-fdd6-90aa.eu.ngrok.io/messaging", "description":"a DIDCOMM V2 endpoint in veramo that supports did:peer "}
}
}'