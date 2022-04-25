#!/bin/bash

# Uncomment for debugging use
# set -o xtrace
set -o errexit
set -o pipefail
set -o nounset

# The FAQ page says 8.1 but it's actually 8.1.1
PREV_RELEASE="8.1"

LATEST_RELEASE=$(curl --silent https://www.netacad.com/courses/packet-tracer/faq | \
    grep --only-matching --perl-regexp "What’s new in Packet Tracer (\d\.\d|\.\d)" | \
    head -1 | \
    grep --only-matching --perl-regexp "(\d\.\d|\.\d)")

if [[ "${LATEST_RELEASE}" != "${PREV_RELEASE}" ]]; then
    echo "There's a new release of Packet Tracer."
    echo "https://www.netacad.com/courses/packet-tracer/faq"
    echo "${LATEST_RELEASE} > ${PREV_RELEASE}."
else
    echo "There's no new release of Packet Tracer."
    echo "https://www.netacad.com/courses/packet-tracer/faq"
    echo "${LATEST_RELEASE} == ${PREV_RELEASE}."
fi