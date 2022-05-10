#!/bin/sh

set -euxo pipefail

xxd "$2" > "$2".hex
patch -u "$2" -i "$1"
xxd -r "$2".hex > "$2"
rm "$2".hex
