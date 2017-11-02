#!/bin/bash
TOKEN='BAhJIiU5MWRmODdmMTRiZjcyOTYwYmM5ZWYzY2NlMDYyNzViMgY6BkVG--79091ecdf1226c47531f0dc806705805fd56302c'
ID=3
CATEGORY_ID=3
NAME='ok'
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
      "category_id": "'"${CATEGORY_ID}"'",
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIPTION}"'",
      "current_quantity": "'"${CURRENT_QUANTITY}"'",
      "alert_quantity": "'"${ALERT_QUANTITY}"'",
      "quantity_purchased": "'"${QUANTITY_PURCHASED}"'",
      "in_order_list": "'"${IN_ORDER_LIST}"'"
    }
  }'

echo
