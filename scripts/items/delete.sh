
#!/bin/bash

TOKEN='BAhJIiU5MWRmODdmMTRiZjcyOTYwYmM5ZWYzY2NlMDYyNzViMgY6BkVG--79091ecdf1226c47531f0dc806705805fd56302c'
ID=2

API="${API_ORIGIN:-http://localhost:4741}"
# API="${API_ORIGIN:-https://the-inventory-manager.herokuapp.com}"
URL_PATH="/items/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

echo
