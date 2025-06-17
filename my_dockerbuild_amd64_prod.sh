#!/bin/sh

docker buildx build --tag="oklischat/fluentbit:$(git describe --tags)-amd64-prod" --target production --platform linux/amd64 .
