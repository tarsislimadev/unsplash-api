#!/usr/bin/sh

# inputs

. datetime.sh

username="${1:-me}"

path="users/${username}/photos"

# runner

resp=$( . ./get.sh "${path}" "username=${username}" )

# outputs

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
