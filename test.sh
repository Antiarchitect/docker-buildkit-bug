#!/bin/bash
set -ex

BASEDIR=$(dirname "$0") && cd "${BASEDIR}";

echo "Hi again!" > 2.txt
docker build . -t buildkitbug:test --progress plain
echo "Hello from bug also!" >> 2.txt
docker build . -t buildkitbug:test --progress plain
