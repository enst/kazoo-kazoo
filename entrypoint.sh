#!/bin/bash

service rabbitmq-server restart 
sleep 5
service kz-whistle_apps restart 
service kz-ecallmgr restart 

exec /bin/bash "$@"

