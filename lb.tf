resource "azurerm_lb" "lb-f" {
  name                = "lb-f"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.rg-main.name}"

  frontend_ip_configuration {
    name                 = "lb-ipconf-f"
    public_ip_address_id = "${azurerm_public_ip.pip-lb-front.id}"
  }
}

resource "azurerm_lb_backend_address_pool" "lb-addrpool-f" {
  resource_group_name = "${azurerm_resource_group.rg-main.name}"
  loadbalancer_id     = "${azurerm_lb.lb-f.id}"
  name                = "backendpool-front"
}

resource "azurerm_lb_rule" "lb-rule-f" {
  resource_group_name            = "${azurerm_resource_group.rg-main.name}"
  loadbalancer_id                = "${azurerm_lb.lb-f.id}"
  name                           = "websiteup"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = "lb-ipconf-f"
}

################# bBACK

resource "azurerm_lb" "lb-b" {
  name                = "lb-b"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.rg-main.name}"

  frontend_ip_configuration {
    name                 = "lb-ipconf-b"
    public_ip_address_id ="${azurerm_public_ip.pip-lb-back.id}"
  }

}

  resource "azurerm_lb_backend_address_pool" "lb-addrpool-b" {
  resource_group_name = "${azurerm_resource_group.rg-main.name}"
  loadbalancer_id     = "${azurerm_lb.lb-b.id}"
  name                = "backendpool-back"
}
