# Ansible-OVS-KVM
Ansible to automate the installation of OpenVSwitch L3 network and spawn VM

This repo contains files required to set up OVS bridge, create Network and spawn VMs. That is `q4_1.yml` task.
`q4_2.yml` performs logging operation on the VM spawned.
The scripts are directory structure dependent.

Before running the playbooks: `cd Ansible-OVS-KVM`

`sudo` permissions are required.

To run task 1:

`ansible-playbook q4_1.yml`

Before running task 2 please perform the follwing actions:

1) after the VMs are spawned, please assign static IPs to both the VMs such that the IP addresses are in the same subnet as given in ansible script: `2.2.2.2/24` and restart the network.

```
[root@localhost ~]# cat /etc/sysconfig/network-scripts/ifcfg-eth1\:0
DEVICE="eth1:0"
IPADDR="2.2.2.200"
NETMASK="255.255.255.0"
ONBOOT="yes"
[root@localhost ~]#
```
By this way you get IP assigned:

```
[root@localhost ~]# ip addr show
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 00:ee:dd:cc:bb:aa brd ff:ff:ff:ff:ff:ff
3: eth1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 00:aa:bb:cc:dd:ee brd ff:ff:ff:ff:ff:ff
    inet 2.2.2.200/24 brd 2.2.2.255 scope global noprefixroute eth1
       valid_lft forever preferred_lft forever
    inet6 fe80::2aa:bbff:fecc:ddee/64 scope link
       valid_lft forever preferred_lft forever
[root@localhost ~]#
```

2) Add keys to the VMs : `ssh-keygen` and copy the keys to the VMs via `ssh-copy-id` command. Add the key paths and user name ansible inventory file. (inventory file in the repo) and then run task 2.

To run task 2:

`ansible-playbook q4_2.yml`
