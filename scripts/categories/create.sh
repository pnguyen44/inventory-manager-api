#!/bin/bash
TOKEN='BAhJIiVkN2JlN2ZkZGQ3NDQ2ZDljYzI1YTg1YjVlOTY5ZmQwOQY6BkVG--9da3cbe8a79ad4823354a056c09fcf8ec107617c'
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
