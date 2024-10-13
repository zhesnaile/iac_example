# iac_example
Set of sample code for creating and managing VMs with terraform, ansible and cloud-init


## Demo 1: VM Templates
This demo is used to create a VM template in Proxmox using Ansible, it runs a single playbook that connects to a Proxmox host, downloads a cloud-init QCOW2 image and creates a VM template with a basic configuration using that image.

It can be found in the [demo1_templates](demo1_templates) folder.

## Demo 2: 
This demo is used to create a VM in Proxmox using terraform and our previously created template, then installing Docker on it.

It can be found in the [demo2_docker_vm](demo2_docker_vm/) folder.

## Demo 3
This demo deploys a free EC2 instance on AWS using terraform

It can be found in the [demo3_aws](demo3_aws/) folder.

## Demo 4
This example shows how CloudFlare can be used to manage our domains DNS registers. 

