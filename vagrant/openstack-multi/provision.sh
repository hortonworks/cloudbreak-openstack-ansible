#!/usr/bin/env bash

echo Arguments used: "$@"

#ansible-playbook ../../ansible/openstack-multi.yml -i vagrant_ansible_inventory -u vagrant "$@"

ansible-playbook -i vagrant_ansible_inventory  ../../ansible/openstack-multi.yml "$@"