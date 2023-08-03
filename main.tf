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
