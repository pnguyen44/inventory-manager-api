#!/bin/bash

TOKEN='BAhJIiU5MWRmODdmMTRiZjcyOTYwYmM5ZWYzY2NlMDYyNzViMgY6BkVG--79091ecdf1226c47531f0dc806705805fd56302c'
CATEGORY_ID=2
NAME='test'
CURRENT_QUANTITY='1'
ALERT_QUANTITY='2'
QUANTITY_PURCHASED='0'
IN_ORDER_LIST=false

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://the-inventory-manager.herokuapp.com}"
URL_PATH="/items"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "item": {
      "category_id": "'"${CATEGORY_ID}"'",
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'",
      "currentQuantity": "'"${CURRENT_QUANTITY}"'",
      "alertQuantity": "'"${ALERT_QUANTITY}"'",
      "quantityPurchased": "'"${QUANTITY_PURCHASED}"'",
      "inOrderList": "'"${IN_ORDER_LIST}"'"
    }
  }'

echo
