#!/bin/bash

set -e

/usr/local/bin/goofys -f tapis-files-bucket /data &

exec "$@"

