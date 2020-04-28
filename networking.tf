
resource "azurerm_virtual_network" "vnet-main" {
  name = "vnet_main"
  address_space = ["${var.vnet_ip_main}"]
  location = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.rg-main.name}"
}

resource "azurerm_subnet" "subnet-f" {
  name = "subnet-f"
  address_prefix = "${var.subnet_ip_f}"
  virtual_network_name = "${azurerm_virtual_network.vnet-main.name}"
  resource_group_name = "${azurerm_resource_group.rg-main.name}"
}


resource "azurerm_subnet" "subnet-b" {
  name = "subnet-b"
  address_prefix = "${var.subnet_ip_b}"
  virtual_network_name = "${azurerm_virtual_network.vnet-main.name}"
  resource_group_name = "${azurerm_resource_group.rg-main.name}"
}


resource "azurerm_subnet" "subnet-master" {
  name = "subnet-master"
  address_prefix = "${var.subnet_ip_master}"
  virtual_network_name = "${azurerm_virtual_network.vnet-main.name}"
  resource_group_name = "${azurerm_resource_group.rg-main.name}"
}