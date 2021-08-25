#!/bin/sh

arch=amd64
gh release download -p "*.$arch.tar.gz" --repo druidfi/cli
docker load < druid-cli-image.$arch.tar.gz && rm -f druid-cli-image.$arch.tar.gz
docker run --rm druidfi/cli wrapper > /tmp/druid-cli && chmod +x /tmp/druid-cli
sudo mv /tmp/druid-cli /usr/local/bin/druid-cli && druid-cli check
