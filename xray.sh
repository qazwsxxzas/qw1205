#!/bin/sh
if [ ! -f UUID ]; then
  UUID="60bcf8eb-c6ff-4dae-be76-adc40bde2054"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

