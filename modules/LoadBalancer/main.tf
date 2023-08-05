resource "azurerm_public_ip" "pip" {
  name                = var.pip-name
  location            = var.location
  resource_group_name = var.resouce-group-name   
  allocation_method   = var.pip-allocation_method
}

resource "azurerm_lb" "LB" {
  name                = var.LB-name
  location            = var.location
  resource_group_name = var.resouce-group-name

  frontend_ip_configuration {
    name                 = var.LB-FEIP-name
    public_ip_address_id = azurerm_public_ip.pip.id
  }
}

resource "azurerm_lb_backend_address_pool" "BEPool" {
  name            = var.BEPool-name
  loadbalancer_id = azurerm_lb.LB.id
}

resource "azurerm_lb_probe" "LBProbe" {
  loadbalancer_id = azurerm_lb.LB.id
  name            = var.LBProbe-name
  port            = var.LBprobe-port
}

resource "azurerm_lb_rule" "LBRule" {
  loadbalancer_id                = azurerm_lb.LB.id
  name                           = var.LBRule-name
  protocol                       = var.LBRule-protocol
  frontend_port                  = var.LBRule-frontend-port
  backend_port                   = var.LBRule-backend-port
  frontend_ip_configuration_name = var.LBRule-frontend_ip_configuration_name
}

resource "azurerm_network_security_group" "NSG" {
  name                = var.NSG-name
  location            = var.location
  resource_group_name = var.resouce-group-name
}

resource "azurerm_network_security_rule" "NSRule" {
  name                        = var.NSRule-name
  priority                    = var.NSRule-priority
  direction                   = var.NSRule-direction
  access                      = var.NSRule-access
  protocol                    = var.NSRule-protocol
  source_port_range           = var.NSRule-source_port_range
  destination_port_range      = var.NSRule-destination_port_range
  source_address_prefix       = var.NSRule-source_address_prefix
  destination_address_prefix  = var.NSRule-destination_address_prefix
  resource_group_name         = var.resouce-group-name
  network_security_group_name = azurerm_network_security_group.NSG.name
}
