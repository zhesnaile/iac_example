# Demo 3: Free Tier EC2 Instance
This demo creates a Ubuntu 24.04 EC2 instance using terraform.
It also generates a new ssh keypair for accessing the instance.

Before running this code, it is necessary to set the following environment variables:
```sh
export AWS_ACCESS_KEY_ID="your_access_key_id"
export AWS_SECRET_ACCESS_KEY="your_secret_access_key"
export AWS_SESSION_TOKEN="your_session_token"  # Optional, only needed if using temporary credentials
```
These are required for terraform to authenticate with AWS services

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

The execution should provide the instance's public ip and instance id in it's output.

To connect to the host we need the newly created .pem

We can use the following command to obtain it.
```sh
terraform output -raw private_key > ec2_example_key.pem
```

With the key in hand we can now connect to our new instance with ssh:
```sh
ssh -i ./ec2_example_key.pem -l ubuntu <our_instances_public_ip>
```

Remember to delete the instance to avoid charges!
```sh
terraform destroy
```
