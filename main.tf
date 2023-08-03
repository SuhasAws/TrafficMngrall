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
    resouce-group-name = modules.ResourceGroup.resource-group-name
    location = modules.ResourceGroup.location
    subnet-name = var.subnet-name
    subnet-address-prefix = var.subnet-address-prefix
    
}