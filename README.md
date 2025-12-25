# NDFC VXLAN EVPN Fabric Automation

## Overview
This Ansible playbook automates the creation of two VXLAN EVPN fabrics (Site1 and Site2) 
on Cisco Nexus Dashboard Fabric Controller (NDFC).

## Prerequisites
- Ansible 2.9 or higher
- Python 3.6 or higher
- Cisco DCNM/NDFC collection
- Network connectivity to NDFC controller at 10.199.101.100

## Installation

1. Install Ansible collections:
```bash
ansible-galaxy collection install -r requirements.yml
```

2. Verify directory structure:
```
ndfc-vxlan-automation/
├── ansible.cfg
├── inventory/
│   └── hosts.yml
├── group_vars/
│   └── ndfc.yml
├── playbooks/
│   └── create_vxlan_fabrics.yml
├── requirements.yml
└── README.md
```

## Configuration

### Fabric Parameters
- **Site1**
  - BGP ASN: 65001
  - Underlay Routing Loopback: 10.12.0.0/22
  - Underlay VTEP Loopback: 10.13.0.0/22
  - Underlay Subnet: 10.14.0.0/22

- **Site2**
  - BGP ASN: 65002
  - Underlay Routing Loopback: 10.22.0.0/22
  - Underlay VTEP Loopback: 10.23.0.0/22
  - Underlay Subnet: 10.24.0.0/22

## Usage

Run the playbook:
```bash
ansible-playbook playbooks/create_vxlan_fabrics.yml
```

Run with verbose output:
```bash
ansible-playbook playbooks/create_vxlan_fabrics.yml -v
```

## Security Notes
- Credentials are stored in group_vars/ndfc.yml
- Consider using Ansible Vault for production:
  ```bash
  ansible-vault encrypt group_vars/ndfc.yml
  ```

## Troubleshooting
- Verify NDFC connectivity: `ping 10.199.101.100`
- Check credentials are correct
- Ensure cisco.dcnm collection is installed
- Review NDFC logs if fabric creation fails# NDFC-Automating-Multi-Site
