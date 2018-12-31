# agency

```bash
$ ssh-keygen -t rsa -f ~/.ssh/agency -C agency
```

```bash
$ cat -f ~/.ssh/agency.pub
```

```ini
[agency]
192.168.1.99  ansible_user=agency
```

```bash
$ ansible-playbook agency.yml
```
