resource "azurerm_public_ip" "pip" {
  name                = var.pip-name
  location            = var.location
  resource_group_name = var.resource-group-name   
  allocation_method   = var.pip-allocation_method
}

resource "azurerm_lb" "LB" {
  name                = var.LB-name
  location            = var.location
  resource_group_name = var.resource-group-name
}

 resource "frontend_ip_configuration" "FEIP" {
    name                 = var.FEIP-name
    public_ip_address_id = azurerm_public_ip.pip.id
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
  resource_group_name = var.resource-group-name
}
