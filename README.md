# iac_example
Set of sample code for creating and managing VMs with terraform, ansible and cloud-init


## Demo 1: VM Templates
This demo is used to create a VM template in Proxmox using Ansible, it runs a single playbook that connects to a Proxmox host, downloads a cloud-init QCOW2 image and creates a VM template with a basic configuration using that image.

It can be found in the [demo1_templates](demo1_templates) folder.

## Demo 2
This demo is used to create a VM in Proxmox using terraform, then installing Docker on it and updating the VM.

code used:

Terraform:
- [ubuntu_vm module](terraform/modules/ubuntu_vm)
- [vm declaration](terraform/instances/docker_example_vm)

Ansible playbook:
- [docker_install](ansible/docker_install_example/)
- [vm_update](ansible/vm_update_example/)

## Demo 3
This demo deploys a free EC2 instance on AWS using terraform

## Demo 4
This example shows how CloudFlare can be used to manage our domains DNS registers. 

