provider "proxmox" {
  pm_api_url          = var.pm_api_url
  pm_api_token_id     = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret
  pm_tls_insecure     = true
}
terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = ">= 2.0.0"
    }
  }
}
resource "proxmox_vm_qemu" "template-vms" {
  count       = length(local.vm_configs)
  name        = local.vm_configs[count.index].name
  target_node = local.vm_configs[count.index].target_node
  vmid        = local.vm_configs[count.index].vmid
  memory      = local.vm_configs[count.index].memory
  cores       = local.vm_configs[count.index].cores
  sockets     = local.vm_configs[count.index].sockets
  agent       = local.vm_configs[count.index].agent
  bios        = local.vm_configs[count.index].bios
  os_type     = local.vm_configs[count.index].os_type
  qemu_os     = local.vm_configs[count.index].qemu_os
  iso         = local.vm_configs[count.index].iso
  onboot      = local.vm_configs[count.index].onboot
  bootdisk    = local.vm_configs[count.index].bootdisk
  oncreate    = local.vm_configs[count.index].oncreate
  network {
    model  = local.vm_configs[count.index].network.model
    bridge = local.vm_configs[count.index].network.bridge
  }
  disk {
    type    = local.vm_configs[count.index].disk.type
    storage = local.vm_configs[count.index].disk.storage
    size    = local.vm_configs[count.index].disk.size
    discard = local.vm_configs[count.index].disk.discard
    ssd     = local.vm_configs[count.index].disk.ssd
    cache   = local.vm_configs[count.index].disk.cache
  }
  balloon = local.vm_configs[count.index].balloon
  scsihw  = local.vm_configs[count.index].scsihw
  vcpus   = local.vm_configs[count.index].vcpus
  tags    = local.vm_configs[count.index].tags
  hotplug = local.vm_configs[count.index].hotplug
  cpu     = local.vm_configs[count.index].cpu
  numa    = local.vm_configs[count.index].numa
  machine = local.vm_configs[count.index].machine
}