#!/bin/bash

service bigcouch start

exec "$@"

