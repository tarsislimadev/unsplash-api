#!/usr/bin/sh

# inputs

. datetime.sh

username="${1:-me}"

path="users/${username}/collections"

# runner

resp=$( . ./get.sh "${path}" "" )

# outputs

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
