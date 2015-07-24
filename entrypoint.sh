#!/bin/bash

service bigcouch start

exec /bin/bash "$@"

