#!/bin/bash

TOKEN='BAhJIiVhNmUxNmIyZWE1MjZkZTgwZTA0YmRmZmNiNGNkOGUxNgY6BkVG--66fdd114b9094be1805946dcc414248599829776'
CATEGORY_ID=66
NAME='a'
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
