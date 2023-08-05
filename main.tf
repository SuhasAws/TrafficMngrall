terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.67.0"
    }
  }
}
provider "azurerm" {
  features{}
}

module "resource-group" {
    source = "./modules/ResourceGroup"
    resource-group-name = var.resource-group-name
    location = var.location
}

module "vnet" {
    source = "./modules/VirtualNetwork"
    vnet-name = var.vnet-name
    vnet-address-space = var.vnet-address-space
    resource-group-name = module.resource-group.resource-group-name
    location = module.resource-group.location
    subnet-name = var.subnet-name
    subnet-address-prefix = var.subnet-address-prefix

}

module "LB" {
    source = "./modules/LoadBalancer"
    resource-group-name = var.resource-group-name
    pip-name            = var.pip-name
    location            = var.location   
    pip-allocation_method   = var.pip-allocation_method
    LB-name               = var.LB-name
    LB-FEIP-name                = var.LB-FEIP-name
    BEPool-name            = var.BEPool-name
    LBProbe-name            = var.LBProbe-name
    LBprobe-port            = var.LBprobe-port
    LBRule-name             = var.LBRule-name
    LBRule-protocol              = var.LBRule-protocol
    LBRule-frontend-port                  = var.LBRule-frontend-port
    LBRule-backend-port                 = var.LBRule-backend-port
    LBRule-frontend_ip_configuration_name = var.LBRule-frontend_ip_configuration_name
    NSG-name              = var.NSG-name
    NSRule-name                      = var.NSRule-name
    NSRule-priority                    = var.NSRule-priority
    NSRule-direction                   = var.NSRule-direction
    NSRule-access                      = var.NSRule-access
    NSRule-protocol                    = var.NSRule-protocol
    NSRule-source_port_range           = var.NSRule-source_port_range
    NSRule-destination_port_range      = var.NSRule-destination_port_range
    NSRule-source_address_prefix       = var.NSRule-source_address_prefix
    NSRule-destination_address_prefix  = var.NSRule-destination_address_prefix
}
