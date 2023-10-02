locals {
  vm_configs = [
    {
      name        = "GBRLNDDC1"
      target_node = "pve"
      vmid        = 301
      memory      = 4096
      cores       = 2
      sockets     = 1
      balloon     = 2048
      full_clone  = true
      clone       = "windowsServer-core"
      tags        = "WindowsServer,GBRLNDDC1"
      onboot      = false
      oncreate    = false
      bios        = "ovmf"
      hotplug     = "network,disk,memory,cpu"
      bootdisk    = "scsi0"
      scsihw      = "virtio-scsi-pci"
      numa        = true
    },
    {
      name        = "GBRLNDDC2"
      target_node = "pve"
      vmid        = 302
      memory      = 4096
      cores       = 2
      sockets     = 1
      balloon     = 2048
      full_clone  = true
      clone       = "windowsServer-core"
      tags        = "WindowsServer,GBRLNDDC2"
      onboot      = false
      oncreate    = false
      bios        = "ovmf"
      hotplug     = "network,disk,memory,cpu"
      bootdisk    = "scsi0"
      scsihw      = "virtio-scsi-pci"
      numa        = true
    },
    {
      name        = "GBRLNDCLI1"
      target_node = "pve"
      vmid        = 201
      memory      = 16384
      cores       = 4
      sockets     = 1
      balloon     = 8192
      full_clone  = true
      clone       = "windows11-template"
      tags        = "Windows11,GBRLNDCLI1"
      onboot      = false
      oncreate    = false
      bios        = "ovmf"
      hotplug     = "network,disk,memory,cpu"
      bootdisk    = "scsi0"
      scsihw      = "virtio-scsi-pci"
      numa        = true
    },
    {
      name        = "GBRLNDCM1"
      target_node = "pve"
      vmid        = 303
      memory      = 32768
      cores       = 8
      sockets     = 2
      balloon     = 8192
      full_clone  = true
      clone       = "windowsServer-Desktop"
      tags        = "WindowsServer,GBRLNDCM1"
      onboot      = false
      oncreate    = false
      bios        = "ovmf"
      hotplug     = "network,disk,memory,cpu"
      bootdisk    = "scsi0"
      scsihw      = "virtio-scsi-pci"
      numa        = true
    },
    {
      name        = "GBRLNDCA1"
      target_node = "pve"
      vmid        = 304
      memory      = 4096
      cores       = 2
      sockets     = 1
      balloon     = 2048
      full_clone  = true
      clone       = "windowsServer-Desktop"
      tags        = "WindowsServer,GBRLNDCA1"
      onboot      = false
      oncreate    = false
      bios        = "ovmf"
      hotplug     = "network,disk,memory,cpu"
      bootdisk    = "scsi0"
      scsihw      = "virtio-scsi-pci"
      numa        = true
    },
    {
      name        = "GBRLNDS1"
      target_node = "pve"
      vmid        = 305
      memory      = 4096
      cores       = 2
      sockets     = 1
      balloon     = 2048
      full_clone  = true
      clone       = "windowsServer-core"
      tags        = "WindowsServer,GBRLNDS1"
      onboot      = false
      oncreate    = false
      bios        = "ovmf"
      hotplug     = "network,disk,memory,cpu"
      bootdisk    = "scsi0"
      scsihw      = "virtio-scsi-pci"
      numa        = true
    },
    {
      name        = "GBRLNDKMS"
      target_node = "pve"
      vmid        = 306
      memory      = 4096
      cores       = 2
      sockets     = 1
      balloon     = 2048
      full_clone  = true
      clone       = "windowsServer-Desktop"
      tags        = "WindowsServer,GBRLNDKMS"
      onboot      = false
      oncreate    = false
      bios        = "ovmf"
      hotplug     = "network,disk,memory,cpu"
      bootdisk    = "scsi0"
      scsihw      = "virtio-scsi-pci"
      numa        = true
    },
    {
      name        = "GBRLNDNPS"
      target_node = "pve"
      vmid        = 307
      memory      = 4096
      cores       = 2
      sockets     = 1
      balloon     = 2048
      full_clone  = true
      clone       = "windowsServer-Desktop"
      tags        = "WindowsServer,GBRLNDNPS"
      onboot      = false
      oncreate    = false
      bios        = "ovmf"
      hotplug     = "network,disk,memory,cpu"
      bootdisk    = "scsi0"
      scsihw      = "virtio-scsi-pci"
      numa        = true
    },
    {
      name        = "GBRLNDVPN"
      target_node = "pve"
      vmid        = 308
      memory      = 4096
      cores       = 2
      sockets     = 1
      balloon     = 2048
      full_clone  = true
      clone       = "windowsServer-Desktop"
      tags        = "WindowsServer,GBRLNDKMS"
      onboot      = false
      oncreate    = false
      bios        = "ovmf"
      hotplug     = "network,disk,memory,cpu"
      bootdisk    = "scsi0"
      scsihw      = "virtio-scsi-pci"
      numa        = true
    },
    {
      name        = "GBRLNDCLI2"
      target_node = "pve"
      vmid        = 202
      memory      = 8192
      cores       = 2
      sockets     = 1
      balloon     = 4096
      full_clone  = true
      clone       = "windows11-template"
      tags        = "Windows11,GBRLNDCLI2"
      onboot      = false
      oncreate    = false
      bios        = "ovmf"
      hotplug     = "network,disk,memory,cpu"
      bootdisk    = "scsi0"
      scsihw      = "virtio-scsi-pci"
      numa        = true
    }
  ]
}