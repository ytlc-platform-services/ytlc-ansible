# ytlc-ansible
ansible master: MYSSSVMENLP05 (10.22.9.33)
ansible folder: /etc/ansible
playbook folder: /etc/ansible/playbook
inventory playbook: /etc/ansible/playbook
script: /etc/ansible/script

Windows Servers Prerequisites
Windows Client Requirements: https://docs.ansible.com/ansible/latest/os_guide/windows_setup.html#host-requirements
1. For Windows Server without PowerShell version 5.1 and .NET Framework 4.6, need to install both WINRM and upgrade PowerShell.
2. For Windows Server with PowerShell Version 5.1 and .NET Framework 4.6 (Windows Servere 2022), just need to install WINRM.
3. To run ansible playbook on Windows Client without WINRM installed, we can use community.windows.psexec ansible module to install WINRM.
   Reference: https://docs.ansible.com/ansible/latest/collections/community/windows/psexec_module.html#ansible-collections-community-windows-psexec-module
4. Run the playbook without WINRM
   #ansible-playbook -i localhost, install-winrm.yaml

Linux Clients
1. Run the bash script to copy ssh key to all clients. Change the clients value accordingly.
   #/etc/ansible/script/ssh-copy-id.sh
2. run the playbook
   #ansible-playbook -i hosts playbook.yaml
3. run the playbook with vault file
   #ansible-playbook -i hosts playbook.yaml --ask-vault-pass
4. scan playbook for errors with ansible lint
   #ansible-lint playbook.yaml
5. populate ansible secret
   #vim secret.yaml
   username: admin
   password: passwrd
6. encrypt ansible secret
   #ansible-vault encrypt secret.yaml
