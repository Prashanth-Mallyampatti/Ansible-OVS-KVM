# Ansible-OVS-KVM
Ansible to automate the installation of VMs with user specified details.

This repo contains files required to set up OVS bridge in various modes, create different types of Networks and spawn VMs based on the user configured data.

Before running the playbooks: `cd Ansible-OVS-KVM`

`sudo` permissions are required.

To run the playbook:

`ansible-playbook init.yml`

Folder Description: 

1. `config_files/` : User specified VM and network configuration data

    -> `config_files/network_configs.yml` : 
    
        Sample configuration:
```
---
  network:
    internet:
      - network_name: internet
        bridge_name: SW1
        bridge_type: nat/dhcp
        ip_address: 9.9.9.1
        dhcp_start_range: 9.9.9.2
        dhcp_end_range: 9.9.9.254
        dhcp_lease_time: 12h
        subnet_address: 9.9.9.0
        subnet_mask_num: 24
    l2:
      - network_name: l2
        bridge_name: SW2
        bridge_type: bridge
    l3:
      - network_name: l3
        bridge_name: SW3
        bridge_type: routed
        ip_address: 10.10.10.1
        subnet_mask_num: 24
 ```
