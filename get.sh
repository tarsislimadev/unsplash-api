#!/usr/bin/sh

. .env

path="${1}"

queries="${2}"

curl -sL "https://api.unsplash.com/${path}?${queries}&client_id=${ACCESS_KEY}"
