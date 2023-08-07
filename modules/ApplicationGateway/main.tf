resource "azurerm_subnet" "APGWSUBNT" {
  name                 = var.APGWSUBNT-name
  resource_group_name  = var.resource-group-name
  virtual_network_name = var.vnet-name
  address_prefixes     = var.APGWSUBNT-address_prefixes
}

resource "azurerm_public_ip" "pipAG" {
  name                = var.pipAG-name
  resource_group_name = var.resource-group-name
  location            = var.location
  allocation_method   = var.pipAG-allocation_method
  sku                 = var.pipAG-sku
}


resource "azurerm_application_gateway" "APGW" {
  name                = var.APGW-name
  resource_group_name = var.resource-group-name
  location            = var.location

  sku {
    name     = var.APGW-sku-name
    tier     = var.APGW-sku-tier
    capacity = var.APGW-sku-capacity
  }

  gateway_ip_configuration {
    name      = var.APGW-GIP-name
    subnet_id = azurerm_subnet.APGWSUBNT.id
  } 


  frontend_port {
    name = var.APGW-FEPORT-name
    port = var.APGW-FEPORT-port
  }

  frontend_ip_configuration {
    name                 = var.APGW-FEIP-name
    public_ip_address_id = azurerm_public_ip.pipAG.id
  }

  backend_address_pool {
    name = var.APGW-BEPOOL-name
  }

  backend_http_settings {
    name                  = var.APGW-BPST-name
    cookie_based_affinity = var.APGW-BPST-cookie_based_affinity
    port                  = var.APGW-BPST-port
    protocol              = var.APGW-BPST-protocol
    request_timeout       = var.APGW-BPST-request_timeout
  }

  http_listener {
    name                           = var.APGW-BPLS-name
    frontend_ip_configuration_name = var.APGW-FEIP-name
    frontend_port_name             = var.APGW-FEPORT-name
    protocol                       = var.APGW-BPLS-protocol
  }

  request_routing_rule {
    name                       = var.APGW-BPRR-name
    rule_type                  = var.APGW-BPRR-rule_type
    http_listener_name         = var.APGW-BPLS-name
    backend_address_pool_name  = var.APGW-BEPOOL-name
    backend_http_settings_name = var.APGW-BPST-name
    priority                   = var.APGW-BPRR-priority
  }
}
