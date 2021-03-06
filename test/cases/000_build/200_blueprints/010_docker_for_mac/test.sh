#!/bin/sh
# SUMMARY: Test the Docker for Mac blueprint
# LABELS:

set -e

# Source libraries. Uncomment if needed/defined
#. "${RT_LIB}"
. "${RT_PROJECT_ROOT}/_lib/lib.sh"

NAME=docker-for-mac

clean_up() {
	rm -f ${NAME}*
}

trap clean_up EXIT

# Test code goes here
moby build -name "${NAME}" "${LINUXKIT_BLUEPRINTS_DIR}/${NAME}/base.yml" "${LINUXKIT_BLUEPRINTS_DIR}/${NAME}/docker-ce.yml"

exit 0

