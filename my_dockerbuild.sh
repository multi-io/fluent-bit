#!/bin/sh

docker build --tag="oklischat/fluentbit:$(git describe --tags)" .
