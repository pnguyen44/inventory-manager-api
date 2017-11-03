#!/bin/bash

TOKEN='BAhJIiViMDNkNDY2NWEyMWFjYzk1NTY4YWJjZDNkMjQ4NjkzNAY6BkVG--989f2f859e32c8545754378182fb75f490a1ad25'
ID=12

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://the-inventory-manager.herokuapp.com}"
URL_PATH="/items/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
