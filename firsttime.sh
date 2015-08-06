#! /bin/bash

MY_IP=$(ip route get 8.8.8.8 | awk '/8.8.8.8/ {print $NF}')

sup crossbar_maintenance init_apps '/var/www/html/monster-ui/apps' "http://${MY_IP}:8000/v2"
sup whistle_media_maintenance import_prompts /opt/kazoo/system_media/en-us/
