#!/bin/bash

set -euo pipefail
cd /opt/notbit

export CFLAGS=""
./autogen.sh >&2
make >&2
