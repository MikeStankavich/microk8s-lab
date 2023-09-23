# microk8s-lab
An IAC stack for microk8s homelab. This recipe is built for a homelab with three physical NUC servers and is configured to run from MacOS.

Prerequisites:
- Mac:
  - ansible https://www.ansible.com/: install with brew or pip
  - just https://just.systems/: install with brew or from github
  - kubectl from brew or docker desktop
- Servers:
  - Ubuntu 22.04 Server

Installation:
1. Update inventory.yml as needed to match hostnames
2. Run `just ansible-requirements` to install ansible dependencies
3. Run `just ansible-provision` to install microk8s and dependencies
4. Merge config from controller ~/.kube/config with Macbook ~/.kube/config
