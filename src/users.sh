#!/usr/bin/sh

# inputs

. datetime.sh

username="${1}"

path="users/${username}"

# runner

resp=$( . ./get.sh "${path}" "" )

# outputs

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
