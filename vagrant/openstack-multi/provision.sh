#!/usr/bin/env bash

echo Arguments used: "$@"

#ansible-playbook ../../ansible/openstack-multi.yml -i vagrant_ansible_inventory -u vagrant "$@"

ansible-playbook --private-key=.vagrant/machines/controller/virtualbox/private_key --user=vagrant --connection=ssh --limit='controller' --inventory-file=.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory ../../ansible/os-controller.yml "$@"