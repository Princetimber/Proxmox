locals {
  vm_configs = [
    {
      name        = "ubuntuServer"
      target_node = "pve"
      vmid        = 100
      memory      = 4096
      cores       = 2
      sockets     = 1
      agent       = 1
      bios        = "ovmf"
      os_type     = "ubuntu 22.04.3"
      qemu_os     = "l26"
      scsihw      = "virtio-scsi-pci"
      cpu         = "host"
      vcpus       = 2
      iso         = "local:iso/ubuntu-22.04.3-live-server-amd64.iso"
      onboot      = false
      oncreate    = false
      bootdisk    = "scsi0"
      balloon     = 2048
      tags        = "Template,Ubuntu22.04.3"
      numa        = true
      hotplug     = "network,disk,memory,cpu"
      network = {
        model  = "virtio"
        bridge = "vmbr1"
      }
      disk = {
        type    = "scsi"
        storage = "local-lvm"
        size    = "32G"
        discard = "on"
        ssd     = 1
        cache   = "writeback"
      }
      machine = "q35"
    },
    {
      name        = "windowsServer-core"
      target_node = "pve"
      vmid        = 101
      memory      = 16384
      cores       = 4
      sockets     = 1
      agent       = 1
      bios        = "ovmf"
      os_type     = "Microsoft Windows 11"
      qemu_os     = "win11"
      iso         = "local:iso/Windows_Server_2022.ISO"
      onboot      = false
      bootdisk    = "scsi0"
      oncreate    = false
      network = {
        model  = "virtio"
        bridge = "vmbr1"
      }
      disk = {
        type    = "scsi"
        storage = "local-lvm"
        size    = "80G"
        discard = "on"
        ssd     = 1
        cache   = "writeback"
      }
      balloon = 8192
      scsihw  = "virtio-scsi-pci"
      vcpus   = 2
      tags    = "Template,core"
      hotplug = "network,disk,memory,cpu"
      cpu     = "x86-64-v2-AES"
      numa    = true
      machine = "q35"
    },
    {
      name        = "windowsServer-desktop"
      target_node = "pve"
      vmid        = 102
      memory      = 16384
      cores       = 4
      sockets     = 1
      agent       = 1
      bios        = "ovmf"
      os_type     = "Microsoft Windows 11"
      qemu_os     = "win11"
      iso         = "local:iso/Windows_Server_2022.ISO"
      onboot      = false
      bootdisk    = "scsi0"
      oncreate    = false
      network = {
        model  = "virtio"
        bridge = "vmbr1"
      }
      disk = {
        type    = "scsi"
        storage = "local-lvm"
        size    = "80G"
        discard = "on"
        ssd     = 1
        cache   = "writeback"
      }
      balloon = 8192
      scsihw  = "virtio-scsi-pci"
      vcpus   = 2
      tags    = "Template,desktop"
      hotplug = "network,disk,memory,cpu"
      cpu     = "x86-64-v2-AES"
      numa    = true
      machine = "q35"
    },
    {
      name        = "windows11-template"
      target_node = "pve"
      vmid        = 103
      memory      = 16384
      cores       = 4
      sockets     = 1
      agent       = 1
      bios        = "ovmf"
      os_type     = "Microsoft Windows 11"
      qemu_os     = "win11"
      iso         = "local:iso/Win11_22H2.iso"
      onboot      = false
      bootdisk    = "scsi0"
      oncreate    = false
      network = {
        model  = "virtio"
        bridge = "vmbr1"
      }
      disk = {
        type    = "scsi"
        storage = "local-lvm"
        size    = "100G"
        discard = "on"
        ssd     = 1
        cache   = "writeback"
      }
      balloon = 8192
      scsihw  = "virtio-scsi-pci"
      vcpus   = 2
      tags    = "Template,Windows11"
      hotplug = "network,disk,memory,cpu"
      cpu     = "x86-64-v2-AES"
      numa    = true
      machine = "q35"
    }
  ]
}