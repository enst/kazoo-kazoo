#!/bin/bash

chown rabbitmq:daemon /var/lib/rabbitmq/ -R \
  && chown kazoo:daemon /opt/kazoo /var/log/2600hz -R 

sed -i '/port/s/15984/5984/' /etc/kazoo/config.ini 
sed -i '/port/s/15986/5986/' /etc/kazoo/config.ini 
sed -i "/cookie/s/change_me/$COOKIE/" /etc/kazoo/config.ini 

sed -i '/NODE_IP_ADDRESS/s/0.0.0.0/127.0.0.1/' /etc/kazoo/rabbitmq/rabbitmq-env.conf 

service rabbitmq-server restart 
sleep 5
service kz-whistle_apps restart 
service kz-ecallmgr restart 

exec /bin/bash "$@"

