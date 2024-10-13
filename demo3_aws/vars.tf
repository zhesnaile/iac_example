variable "region" {
  description = "The AWS region to deploy the EC2 instance"
  type        = string
  default     = "eu-west-3"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default     = "ami-045a8ab02aadf4f88" # Ubuntu 24.04 AMI
}

variable "instance_type" {
  description = "The instance type to use for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "The name tag for the EC2 instance"
  type        = string
  default     = "FreeTierEC2"
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
  default     = "free_tier_ec2_test_key"
}
