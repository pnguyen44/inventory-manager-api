#!/bin/bash

TOKEN='BAhJIiVhNmUxNmIyZWE1MjZkZTgwZTA0YmRmZmNiNGNkOGUxNgY6BkVG--66fdd114b9094be1805946dcc414248599829776'
USER_ID=3
API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://the-inventory-manager.herokuapp.com}"
URL_PATH="/items"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "item": {
      "user_id": "'"${USER_ID}"'"
    }
  }'
echo
