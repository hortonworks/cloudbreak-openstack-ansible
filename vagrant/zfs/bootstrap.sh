#!/bin/bash

#https://raid.wiki.kernel.org/index.php/RAID_setup

#source /vagrant/bootstrap.sh

install_zfs() {
    sudo apt-add-repository --yes ppa:zfs-native/stable
    sudo apt-get update
    sudo apt-get install -y ubuntu-zfs
}

configure_raidz() {
    sudo zpool create -f datastore raidz /dev/sdb /dev/sdc /dev/sdd /dev/sde
}

check_raidz() {
    sudo dmesg | grep ZFS
    sudo zpool status datastore
}

create_fs() {
    sudo zfs create -o mountpoint=/mnt/data datastore/data
    sudo zfs list
}

#https://romanrm.net/dd-benchmark
bechmark() {
    sync; dd if=/dev/zero of=bf bs=8k count=500000 conv=fdatasync; rm bf
}

replace_faulty() {
    sudo zpool replace datastore /dev/sde /dev/sdf
}
