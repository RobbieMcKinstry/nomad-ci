#!/bin/bash

set -e

NOMAD_VERSION="0.6.0-rc1"
CURDIR=`pwd`

if [[ $(which nomad >/dev/null && nomad version | head -n 1 | cut -d ' ' -f 2) == "v$NOMAD_VERSION" ]]; then
    echo "Nomad v$NOMAD_VERSION already installed; Skipping"
    exit
fi

echo Fetching Nomad...
cd /tmp/
wget -q https://releases.hashicorp.com/nomad/${NOMAD_VERSION}/nomad_${NOMAD_VERSION}_linux_amd64.zip -O nomad.zip
echo Installing Nomad...
unzip nomad.zip
sudo chmod +x nomad
sudo mv nomad /usr/bin/nomad
cd ${CURDIR}
