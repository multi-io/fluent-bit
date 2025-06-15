#!/bin/sh

docker build --tag="oklischat/fluentbit:$(git describe --tags)" --build-arg EXTRA_CMAKE_FLAGS="-DFLB_TRACE=On" .
