variable "s3_bucket_config" {
  type = object({
    bucket          = string # bucket name
    key             = string # path in the bucket to store tfstate
    region          = string # s3 region
    endpoint        = string # s3 endpoint url
    skip_aws_checks = bool   # skips a series of checks that are only relevant to AWS and break compatibility with other object storage solutions
  })
  description = "Configuration for the S3 bucket used to store Terraform state."

  default = {
    bucket          = ""
    key             = ""
    region          = "eu-central"
    endpoint        = "https://s3.eu-central-003.backblazeb2.com"
    skip_aws_checks = true
  }
}

variable "cloud_init_template" {
  type        = string
  description = "Name of the cloud-init template to use"
  default     = "ubuntu-24.04-server-cloudimg-amd64"
}

variable "proxmox_host" {
}

variable "api_url" {
}

variable "token_secret" {
}

variable "token_id" {
}

variable "username" {
  type        = string
  description = "Username of the cloud-init user"
  sensitive   = true
}

variable "ssh_public_key" {
  type        = string
  description = "Public SSH Key to add to authorized keys"
  sensitive   = true
}

variable "proxmox_node" {
    type = string
}

variable "vm_ip" {
  type        = string
  description = "IP of newly created VM in CIDR notation"
  default     = "<IP address>"
}

variable "gateway_ip" {
  type        = string
  description = "IP of gateway"
  default     = "<IP address>"
}
