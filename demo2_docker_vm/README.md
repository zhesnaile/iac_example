# Demo 2: Docker VM Example
This demo creates a Ubuntu 24.04 VM using terraform and the template created in demo1.
Then it uses an Ansible playbook to install docker on said VM.

The terraform code must be run from the [docker-example-vm](instances/docker-example-vm/) directory.
This terraform leverages a different module used to spin up a ubuntu 24.04 VM.

To run the first part of the demo, terraform needs a series of input variables; there is a template for a `terraform.tfvars` file included in the repository.

Then, one must simply run the following commands:
```sh
terraform init
```
To initialize the Terraform module.

```sh
terraform apply
```
To apply the configuration.

Once the execution has finished, we should have a new VM with a fresh install of Ubuntu available.

We can now head to the [ansible/](ansible/) folder.

Here we must create a new inventory file targeting our new VM.

After creating said file we can run our playbook to install docker on our VM.
```sh
ansible-playbook -i inventory run.yml 
```
```
