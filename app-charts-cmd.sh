#!/bin/bash
set -e

rm -f index-cache.yaml
sleep 1
#/usr/local/bin/chartmuseum --gen-index --storage local --storage-local-rootdir ./ > index-cache.yaml
#/usr/local/bin/chartmuseum --gen-index --storage local --storage-local-rootdir ./
${PWD}/chartmuseum --gen-index --storage local --storage-local-rootdir ./ | tee /dev/stdout > index.yaml
#sleep 1
#mv index-cache.yaml index.yaml
