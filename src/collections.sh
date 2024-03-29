#!/usr/bin/sh

# inputs

. datetime.sh

page="${1:-1}"

path="collections"

# runner

resp=$( . ./get.sh "${path}" "page=${page}" )

# outputs

. create.sh "${path}" "${datetime}" "resp.json" "${resp}"
