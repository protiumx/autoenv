# autoenv

My `Ansible` automation to setup macOS laptos with a development environment.

## Running

```sh
export GITHUB_TOKEN="<- token ->"
curl -sO https://raw.githubusercontent.com/protiumx/autoenv/main/autoenv
```

The script will install the initial requirements:
- xCode
- Hombrew
- Git
- Python3 and PIP
- Virtual env
- Ansible

From there, `ansible` takes over with the [autoenv](./playbooks/autoenv.yml) playbook.
When `ansible` is done, the [post-install](./post-install.sh) script run commands that are not suitable for `ansible`.

## Github Token

`ansible` will upload the ssh key to github, for that you need to export a `GITHUB_TOKEN` before running the scripts.

## Customization

Most of the customizable configs reside on the [grou-vars](./playbooks/group_vars/all) definitions.
You can check all the system settings, `brew` packages/casks and app store apps that will be installed.
