# Packer

We use hashicorp packer to create ami's.

## Layout

All the packer files can be found under the packer/images folder. E.g.

```
ls packer/images
cassandra.json  dpb-build-gocdagent.json  k8s-np-minion.json  k8s-ops-minion.json  k8s-prod-minion.json  playbooks  standard1604.json  standard.json
```
These tend to follow the standard of getting upgrading the operating system to the latest version of that distribution, setting up ansible and then running ansible scripts under the playbooks folder.

The playbook folder has symlinks to roles, modules etc from the main ansible folder.

## Usage

```
usage: createami [-h] [-n] name

Create packer image

positional arguments:
  name              name of the packer imager (e.g. standard)

optional arguments:
  -h, --help        show this help message and exit
  -n, --notracking  Disable remote tracking for this job
```

## Examples

createami standard
createami standard1604
createami k8s-ops-minion
