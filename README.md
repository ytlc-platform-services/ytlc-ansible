# ytlc-ansible
ansible master: MYSSSVMENLP02 
ansible folder: /etc/ansible

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
