#!/bin/bash

ovs-vsctl add-br br0
ovs-vsctl show

ovs-vsctl add-port br0 eth1
ifconfig eth1 0.0.0.0

dhclient br0

ip tuntap add mode tap vport1
ip tuntap add mode tap vport2
ifconfig vport1 up
ifconfig vport2 up

ovs-vsctl add-port br0 vport1
ovs-vsctl add-port br0 vport2

ovs-vsctl show
