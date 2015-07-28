#!/bin/bash

chown rabbitmq:daemon /var/lib/rabbitmq/ -R \
  && chown kazoo:daemon /opt/kazoo /var/log/2600hz -R 

service rabbitmq-server restart 
sleep 5
service kz-whistle_apps restart 
service kz-ecallmgr restart 

exec /bin/bash "$@"

