
## Contents

- **ansible.cfg**: Configuration file for Ansible.
- **inventory**: Inventory file containing the list of hosts.
- **site.yaml**: The main playbook file.
- **roles/**: Directory containing the roles for the playbook.
  - **pre-patch/**: Role to perform pre-patch maintenance tasks.
    - **tasks/main.yaml**: Tasks to install, start, and synchronize NTP, update repository data, clean FSTAB, and perform an initial backup.
    - **handlers/main.yaml**: Handlers to restart NTP service and reload FSTAB.

## Usage

To run the playbook, use the following command:

```bash
ansible-playbook site.yaml


Check connection to Linux clients
```
ansible -i host -m ping
```
Check connection to Windows Server clients
```
ansible -i host -m win_ping
```
