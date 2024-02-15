#!/bin/bash
#ssh key location and username
keyfile=/root/.ssh/id_ed25519.pub
username=svcAnsible
password="svcAnible local account password"

#IP for all hosts
clients=("host1" "host2" "host3")

#copy ssh key to all hosts
for host in "${clients[@]}"; do
  echo "Copying ssh key to $host"
  sshpass -p "$password" ssh-copy-id -o StrictHostKeyChecking=no -i "$keyfile" "$username@$host"
  sshpass -p "$password" echo "$username ALL=(ALL) NOPASSWD:ALL" | sudo tee "/etc/sudoers.d/$username" #Grant Passwordless sudo users

  #check for failed copy
  if [ $? -eq 0 ]; then
    echo "Copy successful at $host"
  else
    echo "Failed to copy the key to $host"
  fi
done

