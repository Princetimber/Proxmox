output "vm_names" {
  value = [for vm in proxmox_vm_qemu.vm_clones : vm.name]
}