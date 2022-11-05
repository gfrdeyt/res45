#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d253c19d-ee4c-474b-acdc-eb710f780dbf"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

