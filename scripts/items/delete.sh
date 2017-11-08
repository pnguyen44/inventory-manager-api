
#!/bin/bash

TOKEN='BAhJIiVhNmUxNmIyZWE1MjZkZTgwZTA0YmRmZmNiNGNkOGUxNgY6BkVG--66fdd114b9094be1805946dcc414248599829776'
ID=204

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://the-inventory-manager.herokuapp.com}"
URL_PATH="/items/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

echo
