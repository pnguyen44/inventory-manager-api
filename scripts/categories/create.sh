#!/bin/bash

TOKEN='BAhJIiU5MWRmODdmMTRiZjcyOTYwYmM5ZWYzY2NlMDYyNzViMgY6BkVG--79091ecdf1226c47531f0dc806705805fd56302c'
NAME='cat1'

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://the-inventory-manager.herokuapp.com}"
URL_PATH="/categories"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "category": {
      "name": "'"${NAME}"'"
    }
  }'

echo
