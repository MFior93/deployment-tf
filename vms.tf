resource "azurerm_virtual_machine" "vm-1-f" {
  name                  = "vm-1-f"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.rg-main.name}"
  network_interface_ids = ["${azurerm_network_interface.nic-1-f.id}"]
  vm_size               = "Standard_DS1_v2"
  availability_set_id   = "${azurerm_availability_set.availabilityset-front.id}"

#This will delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name          = "vm-1-f-os"
    caching       = "ReadWrite"
    create_option = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "vm-1-f"
    admin_username = "${var.vm_username}"
    admin_password = "${var.vm_password}"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_virtual_machine" "vm-2-f" {
  name                  = "vm-2-f"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.rg-main.name}"
  network_interface_ids = ["${azurerm_network_interface.nic-2-f.id}"]
  vm_size               = "Standard_DS1_v2"
  availability_set_id   = "${azurerm_availability_set.availabilityset-front.id}"

#This will delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name          = "vm-2-f-os"
    caching       = "ReadWrite"
    create_option = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "vm-2-f"
    admin_username = "${var.vm_username}"
    admin_password = "${var.vm_password}"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_virtual_machine" "vm-1-b" {
  name                  = "vm-1-b"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.rg-main.name}"
  network_interface_ids = ["${azurerm_network_interface.nic-1-b.id}"]
  vm_size               = "Standard_DS1_v2"
  availability_set_id   = "${azurerm_availability_set.availabilityset-back.id}"

#This will delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name          = "vm-1-b-os"
    caching       = "ReadWrite"
    create_option = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "vm-1-b"
    admin_username = "${var.vm_username}"
    admin_password = "${var.vm_password}"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_virtual_machine" "vm-2-b" {
  name                  = "vm-2-b"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.rg-main.name}"
  network_interface_ids = ["${azurerm_network_interface.nic-2-b.id}"]
  vm_size               = "Standard_DS1_v2"
  availability_set_id   = "${azurerm_availability_set.availabilityset-back.id}"

#This will delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name          = "vm-2-b-os"
    caching       = "ReadWrite"
    create_option = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "vm-2-b"
    admin_username = "${var.vm_username}"
    admin_password = "${var.vm_password}"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_virtual_machine" "vm-master" {
  name                  = "vm-master"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.rg-main.name}"
  network_interface_ids = ["${azurerm_network_interface.nic-master.id}"]
  vm_size               = "Standard_DS1_v2"

#This will delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name          = "vm-master-os"
    caching       = "ReadWrite"
    create_option = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "vm-master"
    admin_username = "${var.vm_username}"
    admin_password = "${var.vm_password}"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}