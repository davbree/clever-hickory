#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://f88658276114.ngrok.io/project/5fec75ad6202d0f902cfd0da/webhook/build/pull > /dev/null
curl -s -X POST https://f88658276114.ngrok.io/project/5fec75ad6202d0f902cfd0da/webhook/build/ssgbuild > /dev/null
jekyll build
curl -s -X POST https://f88658276114.ngrok.io/project/5fec75ad6202d0f902cfd0da/webhook/build/publish > /dev/null
