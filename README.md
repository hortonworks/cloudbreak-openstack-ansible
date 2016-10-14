# OpenStack Liberty Ansible playbooks

Launching it in Vagrant is as simple as:
```
cd vagrant/openstack-multi
#Note: install vagrant-cachier plugin is optional, it just makes the installation faster for the 2nd time
vagrant plugin install vagrant-cachier
vagrant up
```

# Horizon
You can login to Horizon on [http://10.0.0.11/dashboard/](http://10.0.0.11/dashboard/)
- user: admin
- pass: Openstack01


# Arhictecture
- combined controller + network node
- two compute nodes
