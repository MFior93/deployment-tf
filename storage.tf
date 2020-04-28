# Storage account with a container to store VHDs of Virtual Machines.

resource "azurerm_storage_account" "diagnostics-storage" {
  name                        = "mfdiagstorage"
  resource_group_name         = "${azurerm_resource_group.rg-main.name}"
  location                    = "${var.location}"
  account_tier                = "Standard"
  account_replication_type    = "LRS"
}

