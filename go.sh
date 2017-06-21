#! /bin/bash

export GOPATH="$HOME"

if [[ "${OSTYPE}" == "linux-gnu" ]]; then
    PATH="$PATH:/usr/local/go/bin"
fi
