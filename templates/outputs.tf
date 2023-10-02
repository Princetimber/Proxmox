output "vm_names" {
  value = [for vm in proxmox_vm_qemu.template-vms : vm.name]
}