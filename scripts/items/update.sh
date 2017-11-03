#!/bin/bash
TOKEN='BAhJIiViMDNkNDY2NWEyMWFjYzk1NTY4YWJjZDNkMjQ4NjkzNAY6BkVG--989f2f859e32c8545754378182fb75f490a1ad25'
ID=12
NAME='0dfsdok'
DESCRIPTION='number 222'
CURRENT_QUANTITY='1'
ALERT_QUANTITY='2'
QUANTITY_PURCHASED='0'
IN_ORDER_LIST='false'

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://the-inventory-manager.herokuapp.com}"
URL_PATH="/items/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "item": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'",
      "current_quantity": "'"${CURRENT_QUANTITY}"'",
      "alert_quantity": "'"${ALERT_QUANTITY}"'",
      "quantity_purchased": "'"${QUANTITY_PURCHASED}"'",
      "in_order_list": "'"${IN_ORDER_LIST}"'"
    }
  }'

echo
