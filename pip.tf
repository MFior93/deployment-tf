resource "azurerm_public_ip" "pip-1-f" {
  name                  = "pip-1-f"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.rg-main.name}"
  allocation_method     = "Static"

}

resource "azurerm_public_ip" "pip-2-f" {
  name                  = "pip-2-f"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.rg-main.name}"
  allocation_method     = "Static"

}

resource "azurerm_public_ip" "pip-master" {
  name                  = "pip-master"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.rg-main.name}"
  allocation_method     = "Static"

}

resource "azurerm_public_ip" "pip-lb-front" {
  name                  = "pip-lb-front"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.rg-main.name}"
  allocation_method     = "Static"
}

resource "azurerm_public_ip" "pip-lb-back" {
  name                  = "pip-lb-back"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.rg-main.name}"
  allocation_method     = "Static"

}