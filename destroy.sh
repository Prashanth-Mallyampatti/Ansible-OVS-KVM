#!/bin/bash

virsh net-undefine internet
virsh net-undefine other
virsh net-undefine l2
virsh net-undefine l3

virsh net-destroy internet
virsh net-destroy other
virsh net-destroy l2
virsh net-destroy l3

ovs-vsctl del-br SW1
ovs-vsctl del-br SW2
ovs-vsctl del-br SW3
ovs-vsctl del-br SW4

virsh undefine AnsibleVM1
virsh undefine AnsibleVM2

virsh destroy AnsibleVM1
virsh destroy AnsibleVM2

rm -r /var/lib/libvirt/images/Ansible*
