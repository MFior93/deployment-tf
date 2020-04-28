resource "azurerm_availability_set" "availabilityset-front" {
  name                                         = "availabilityset-front"
  location                                     = "${var.location}"
  resource_group_name                          = "${azurerm_resource_group.rg-main.name}"
  platform_update_domain_count                 = 5
  platform_fault_domain_count                  = 2
  managed                                      = "true"
}
resource "azurerm_availability_set" "availabilityset-back" {
  name                                         = "availabilityset-back"
  location                                     = "${var.location}"
  resource_group_name                          = "${azurerm_resource_group.rg-main.name}"
  platform_update_domain_count                 = 5
  platform_fault_domain_count                  = 2
  managed                                      = "true"
}