#! /bin/bash

MY_IP=$(ip route get 8.8.8.8 | awk '/8.8.8.8/ {print $NF}')

RUN yum reinstall -y monster-ui-accounts monster-ui-core monster-ui-numbers \
                    monster-ui-pbxs monster-ui-voip monster-ui-webhooks 

sup crossbar_maintenance init_apps '/var/www/html/monster-ui/apps' "http://${MY_IP}:8000/v2"
sup whistle_media_maintenance import_prompts /opt/kazoo/system_media/en-us/
