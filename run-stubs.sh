#!/usr/bin/env bash

stub_type=${1:-happy}
stub_directory=stubs/${stub_type}
proto_paths=$(
    cd loop-development-kit 
    ls proto/*.proto | grep -v session.proto
)

echo 1>&2 -e "INFO: serving LDK stubs for:\n\n${proto_paths}\n"

if [[ ! -d ${stub_directory} ]]; then
    echo 1>&2 "ERROR: please make sure '${stub_directory}', as defined by the first argument, '${stub_type}', exists."
    exit 1
fi

docker run \
    -w / \
    -p 4770:4770 \
    -p 4771:4771 \
    -v ${PWD}/loop-development-kit/proto:/proto \
    -v ${PWD}/stubs:/stubs \
    tkpd/gripmock:0.8.2 \
    -stub /${stub_directory} \
    proto/session.proto \
    ${proto_paths}