#!/usr/bin/env bash
# lego-renew.sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
source "${DIR}/config.sh"

lego --key-type ec256 --accept-tos \
  --path="${DIR}/.lego" \
  --dns="dreamhost" \
  --email="${LE_EMAIL_ADDRESS}" \
  --domains="${LE_DOMAIN}" \
   renew --days 15 --renew-hook="${DIR}/installcerts.sh"
