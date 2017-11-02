#!/bin/bash

TOKEN='BAhJIiU5NmFlMGQyMmFlYjU0ZDkyYzkxNjMyMDgxZWIxMmY0YQY6BkVG--2f1915b5dca26c22b3d82b9ed1d3eea65a2acc63'
CATEGORY_ID=2
NAME='a1'
DESCRIPTION='number 222'
CURRENT_QUANTITY='1'
ALERT_QUANTITY='2'
QUANTITY_PURCHASED='0'
IN_ORDER_LIST='false'

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
      "current_quantity": "'"${CURRENT_QUANTITY}"'",
      "alert_quantity": "'"${ALERT_QUANTITY}"'",
      "quantity_purchased": "'"${QUANTITY_PURCHASED}"'",
      "in_order_list": "'"${IN_ORDER_LIST}"'"
    }
  }'

echo
