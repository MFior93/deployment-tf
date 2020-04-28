resource "azurerm_network_interface" "nic-master" {
    name                      = "nic-master"
    location                  = "${var.location}"
    resource_group_name       = "${azurerm_resource_group.rg-main.name}"

    ip_configuration {
        name                          = "nic-ipconf-master"
        subnet_id                     = "${azurerm_subnet.subnet-master.id}"
        private_ip_address_allocation = "Static"
        private_ip_address            = "10.10.1.4"
        public_ip_address_id          = "${azurerm_public_ip.pip-master.id}"
    }
}

resource "azurerm_network_interface" "nic-1-f" {
    name                      = "nic-1-f"
    location                  = "${var.location}"
    resource_group_name       = "${azurerm_resource_group.rg-main.name}"

    ip_configuration {
        name                          = "nic-1-ipconf-f"
        subnet_id                     = "${azurerm_subnet.subnet-f.id}"
        private_ip_address_allocation = "Static"
        private_ip_address            = "10.10.2.4"
        public_ip_address_id          = "${azurerm_public_ip.pip-1-f.id}"
    }
}

resource "azurerm_network_interface_security_group_association" "nic-nsg-1front" {
  network_interface_id      = "${azurerm_network_interface.nic-1-f.id}"
  network_security_group_id = "${azurerm_network_security_group.nsg-front.id}"
}

resource "azurerm_network_interface_backend_address_pool_association" "nic-lb-pool-1f" {
  network_interface_id    = "${azurerm_network_interface.nic-1-f.id}"
  ip_configuration_name   = "nic-1-ipconf-f"
  backend_address_pool_id = "${azurerm_lb_backend_address_pool.lb-addrpool-f.id}"
}

resource "azurerm_network_interface" "nic-2-f" {
    name                      = "nic-2-f"
    location                  = "${var.location}"
    resource_group_name       = "${azurerm_resource_group.rg-main.name}"

    ip_configuration {
        name                          = "nic-2-ipconf-f"
        subnet_id                     = "${azurerm_subnet.subnet-f.id}"
        private_ip_address_allocation = "Static"
        private_ip_address            = "10.10.2.5"
        public_ip_address_id          = "${azurerm_public_ip.pip-2-f.id}"
    }
}

resource "azurerm_network_interface_security_group_association" "nic-nsg-2front" {
  network_interface_id      = "${azurerm_network_interface.nic-2-f.id}"
  network_security_group_id = "${azurerm_network_security_group.nsg-front.id}"
}

resource "azurerm_network_interface_backend_address_pool_association" "nic-lb-pool-2f" {
  network_interface_id    = "${azurerm_network_interface.nic-2-f.id}"
  ip_configuration_name   = "nic-2-ipconf-f"
  backend_address_pool_id = "${azurerm_lb_backend_address_pool.lb-addrpool-f.id}"
}

resource "azurerm_network_interface" "nic-1-b" {
    name                      = "nic-1-b"
    location                  = "${var.location}"
    resource_group_name       = "${azurerm_resource_group.rg-main.name}"

    ip_configuration {
        name                          = "nic-1-ipconf-b"
        subnet_id                     = "${azurerm_subnet.subnet-b.id}"
        private_ip_address_allocation = "Static"
        private_ip_address            = "10.10.3.4"
    }
}

resource "azurerm_network_interface_security_group_association" "nic-nsg-1back" {
  network_interface_id      = "${azurerm_network_interface.nic-1-b.id}"
  network_security_group_id = "${azurerm_network_security_group.nsg-back.id}"
}

resource "azurerm_network_interface_backend_address_pool_association" "nic-lb-pool-1b" {
  network_interface_id    = "${azurerm_network_interface.nic-1-b.id}"
  ip_configuration_name   = "nic-1-ipconf-b"
  backend_address_pool_id = "${azurerm_lb_backend_address_pool.lb-addrpool-b.id}"
}

resource "azurerm_network_interface" "nic-2-b" {
    name                      = "nic-2-b"
    location                  = "${var.location}"
    resource_group_name       = "${azurerm_resource_group.rg-main.name}"

    ip_configuration {
        name                          = "nic-2-ipconf-b"
        subnet_id                     = "${azurerm_subnet.subnet-b.id}"
        private_ip_address_allocation = "Static"
        private_ip_address            = "10.10.3.5"
    }
}

resource "azurerm_network_interface_security_group_association" "nic-nsg-2back" {
  network_interface_id      = "${azurerm_network_interface.nic-2-b.id}"
  network_security_group_id = "${azurerm_network_security_group.nsg-back.id}"
}

resource "azurerm_network_interface_backend_address_pool_association" "nic-lb-pool-2b" {
  network_interface_id    = "${azurerm_network_interface.nic-2-b.id}"
  ip_configuration_name   = "nic-2-ipconf-b"
  backend_address_pool_id = "${azurerm_lb_backend_address_pool.lb-addrpool-b.id}"
}