# Demo 1: Templates
This demo only uses an ansible playbook, it contains a single role that creates a set of VM templates for terraform with the most recent official Ubuntu 24.04 cloud-init image.

We've configured it to also generate similar templates for Ubuntu 22.04 and for Rocky Linux 9 images.

The contents of this playbook use [this article](https://fredrickb.com/2023/08/05/setting-up-k3s-nodes-in-proxmox-using-terraform/#setting-up-cloud-init-virtual-machine-templates) as a base.

The targets of this playbook are meant to be Proxmox nodes.

To run it, create an inventory using the provided template then execute the following command:
```sh
ansible-playbook -i inventory run.yaml -K
```
Due to the `-K` flag, ansible will prompt you for your user's password to run commands with `sudo`.
In case of having multiple hosts you will have to set the `become_password` variable for each of the hosts.

By the end of the demo we should have a set of templates in our proxmox host that can be cloned and modified in order to spin up new guests on our Proxmox instance.
