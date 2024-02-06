# ytlc-ansible
ansible master: MYSSSVMENLP02 
ansible folder: /etc/ansible

Windows Servers Prerequisites
Windows Client Requirements: https://docs.ansible.com/ansible/latest/os_guide/windows_setup.html#host-requirements
1. For Windows Server without PowerShell version 5.1 and .NET Framework 4.6, need to install both WINRM and upgrade PowerShell.
2. For Windows Server with PowerShell Version 5.1 and .NET Framework 4.6 (Windows Servere 2022), just need to install WINRM.
3. To run ansible playbook on Windows Client without WINRM installed, we can use community.windows.psexec ansible module to install WINRM.
   Reference: https://docs.ansible.com/ansible/latest/collections/community/windows/psexec_module.html#ansible-collections-community-windows-psexec-module
4. Run the playbook without WINRM
   #ansible-playbook -i localhost, install-winrm.yaml

Linux Clients
1. run the playbook
   #ansible-playbook -i hosts playbook.yaml
2. run the playbook with vault file
   #ansible-playbook -i hosts playbook.yaml --ask-vault-pass
3. scan playbook for errors with ansible lint
   #ansible-lint playbook.yaml
4. populate ansible secret
   #vim secret.yaml
   username: admin
   password: passwrd
6. encrypt ansible secret
   #ansible-vault encrypt secret.yaml
