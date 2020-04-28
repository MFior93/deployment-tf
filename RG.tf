resource "azurerm_resource_group" "rg-main" {
  name = "${var.rg_name}"
  location = "${var.location}"
}