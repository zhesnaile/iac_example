terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc2"
    }
  }
}

provider "proxmox" {
  pm_api_url = var.api_url
  pm_api_token_id = var.token_id
  pm_api_token_secret = var.token_secret
  pm_tls_insecure = true
  pm_debug = true
}

resource "proxmox_vm_qemu" "ubuntu_vm" {
  for_each = {
    for vm in var.vms : vm.name => vm
  }

  name        = each.value.name
  desc        = each.value.desc
  target_node = each.value.pve_node

  os_type    = "cloud-init"
  clone      = var.cloud_init_template
  full_clone = true

  cores  = each.value.cores
  memory = each.value.memory

  ipconfig0 = "ip=${each.value.ip},gw=${var.gateway_ip}"

  ciuser  = var.username
  sshkeys = var.ssh_public_key

  agent = 1

  onboot = each.value.onboot

  disks {
    virtio {
      virtio0 {
        disk {
          storage = "local-btrfs"
          size    = each.value.disk_size
          discard = true
        }
      }
    }
    ide {
      ide2 {
        cloudinit {
          storage = "local-btrfs"
        }
      }
    }
  }


  lifecycle {
    ignore_changes = [
      target_node,
      network,
      clone,
      full_clone,
      qemu_os
    ]
  }
}

