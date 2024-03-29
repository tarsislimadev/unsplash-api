#!/usr/bin/sh

# inputs

. datetime.sh

id="${1:-1}"

path="collections/${id}/photos"

# runner

resp=$( . ./get.sh "${path}" "" )

# outputs

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
