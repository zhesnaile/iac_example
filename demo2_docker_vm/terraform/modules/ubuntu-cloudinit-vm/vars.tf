variable "cloud_init_template" {
  type        = string
  description = "Name of the cloud-init template to use"
  default     = "ubuntu-24.04-server-cloudimg-amd64"
}

variable "proxmox_host" {
  type = string
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

variable "gateway_ip" {
  type        = string
  description = "IP of gateway"
  default     = "<IP address>"
}

variable "vms" {
  type = list(object({
    name      = string
    pve_node  = string
    desc      = string
    ip        = string
    memory    = number
    cores     = number
    disk_size = number
    onboot    = bool
  }))
  default = []
}

