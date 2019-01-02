agency
======



Installation
------------

From your local machine create a SSH Key 
for `agency` user into your remote server 
```bash
$ ssh-keygen -t rsa -f ~/.ssh/agency -C agency
```

Copy and paste the following output 
into your remote server metadata 
for grant SSH authentication
```bash
$ cat ~/.ssh/agency.pub
```

Edit and add the following code 
into your `/etc/ansible/hosts` files
then replace `X.X.X.X` with IP of the remote server
```ini
[agency]
X.X.X.X  ansible_user=agency  ansible_ssh_private_key_file=~/.ssh/agency
```

Download on your local machine the agency ansible playbook
```bash
$ curl -O https://javanile.github.io/agency/agency.yml 
```

Build your agency infrastructure to handle your business
```bash
$ ansible-playbook agency.yml
```
