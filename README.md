# Ansible-OVS-KVM
Ansible to automate the installation of OpenVSwitch L3 network and spawn VM

This repo contains files required to set up OVS bridge, create Network and spawn VMs. That is `q4_1.yml` task.
`q4_2.yml` performs logging operation on the VM spawned.
The scripts are directory structure dependent.

Before running the playbooks: `cd Ansible-OVS-KVM`

`sudo` permissions are required.

To run task 1:

`ansible-playbook q4_1.yml`

To run task 2:

`ansible-playbook q4_2.yml`
