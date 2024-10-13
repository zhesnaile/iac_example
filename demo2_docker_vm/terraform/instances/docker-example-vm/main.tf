module "docker_test_vm" {
  source = "../../modules/ubuntu-cloudinit-vm"

  proxmox_host    = var.proxmox_host
  api_url         = var.api_url
  token_secret    = var.token_secret
  token_id        = var.token_id
  username        = var.username
  ssh_public_key  = var.ssh_public_key
  gateway_ip      = var.gateway_ip
  vms = [{
    name      = "docker-test-VM"
    pve_node  = var.proxmox_node
    desc      = "test-vm"
    ip        = var.vm_ip
    memory    = 4096
    cores     = 2
    disk_size = 50
    onboot    = true
  }]
}
