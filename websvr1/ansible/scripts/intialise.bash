ssh-keyscan -H web1 >> /root/.ssh/known_hosts
ssh-keyscan -H web2 >> /root/.ssh/known_hosts
ssh-keyscan -H web3 >> /root/.ssh/known_hosts
ssh-keyscan -H web4 >> /root/.ssh/known_hosts
ansible -m ping all
