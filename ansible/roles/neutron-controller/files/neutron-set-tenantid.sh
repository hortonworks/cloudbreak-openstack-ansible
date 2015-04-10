#!/usr/bin/env bash

source scripts/admin-openrc.sh

SERVICE_TENANT_ID=`keystone tenant-get service | grep id | awk '{print $4}'`
sed "s/SERVICE_TENANT_ID/${SERVICE_TENANT_ID}/g" /etc/neutron/neutron.conf.templ > /etc/neutron/neutron.conf
#diff /etc/neutron/neutron.conf.templ /etc/neutron/neutron.conf