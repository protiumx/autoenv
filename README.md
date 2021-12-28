# autoenv

My `Ansible` automation to setup macOS laptos with a dev environment.
Ansible configuration based on [https://github.com/bradleyfrank/ansible](https://github.com/bradleyfrank/ansible)

## Running

```sh
curl -sO https://raw.githubusercontent.com/protiumx/autoenv/main/autoenv
```

The script will install:
- Hombrew
- Git
- Python3 and PIP
- Virtual env
- Ansible in a virtual env

From there, `ansible` script takes over with the `autoenv` playbook

### Customization
---- WIP
