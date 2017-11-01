#!/bin/bash

TOKEN='BAhJIiVlYWNkYWM5ZWM3MzMwYTA3MzlhYzQyN2I2MTM0ZDE0ZQY6BkVG--efc1948121112b7895b7316b74dd2aca19b67798'
USER_ID=1
API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://the-inventory-manager.herokuapp.com}"
URL_PATH="/categories"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "category": {
      "user_id": "'"${USER_ID}"'"
    }
  }'
echo
