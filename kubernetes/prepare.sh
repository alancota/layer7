#!/bin/bash

###############################################################
# Created by Alan Cota (alan.cota@broadcom.com) - April, 2019 #
###############################################################

SSG_LICENSE=$(cat ../config/licenses/ssg_license.xml | gzip | base64 -b 0)
PATTERN="YOUR_LICENSE_HERE"

sed -i '' -e "s|${PATTERN}|${SSG_LICENSE}|g" config.yml

