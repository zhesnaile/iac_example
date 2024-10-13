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
