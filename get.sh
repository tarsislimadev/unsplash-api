#!/usr/bin/sh

. .env

path="${1}"

queries="${2}"

curl -sL -H "Authorization: Client-ID ${ACCESS_KEY}" "https://api.unsplash.com/${path}?${queries}&client_id=${ACCESS_KEY}"
