#!/bin/bash
curl -G -x socks5://79.143.180.10:29469 "https://api.telegram.org/bot622843885:AAGjwTvblDMz03_GqmfwjZxtp8xsV7BnfHY/sendMessage?" --data-urlencode "chat_id=555768668" --data-urlencode "text=$1"

