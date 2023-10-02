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
resource "proxmox_vm_qemu" "vm_clones" {
  count       = length(local.vm_configs)
  name        = local.vm_configs[count.index].name
  target_node = local.vm_configs[count.index].target_node
  vmid        = local.vm_configs[count.index].vmid
  memory      = local.vm_configs[count.index].memory
  cores       = local.vm_configs[count.index].cores
  sockets     = local.vm_configs[count.index].sockets
  balloon     = local.vm_configs[count.index].balloon
  full_clone  = local.vm_configs[count.index].full_clone
  clone       = local.vm_configs[count.index].clone
  tags        = local.vm_configs[count.index].tags
  onboot      = local.vm_configs[count.index].onboot
  oncreate    = local.vm_configs[count.index].oncreate
  bios        = local.vm_configs[count.index].bios
  hotplug     = local.vm_configs[count.index].hotplug
  bootdisk    = local.vm_configs[count.index].bootdisk
  scsihw      = local.vm_configs[count.index].scsihw
  numa        = local.vm_configs[count.index].numa
}