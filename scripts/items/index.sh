#!/bin/bash

TOKEN='BAhJIiU5MWRmODdmMTRiZjcyOTYwYmM5ZWYzY2NlMDYyNzViMgY6BkVG--79091ecdf1226c47531f0dc806705805fd56302c'
USER_ID=1
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
