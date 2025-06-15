#!/usr/bin/env bash

docker run --name fbittest "$@" -v ./config:/config "oklischat/fluentbit:$(git describe --tags)" /fluent-bit/bin/fluent-bit -c /config/config.toml
