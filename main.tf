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
    vnet-subnet-name = var.vnet-subnet-name
    vnet-subnet-address_prefixes = var.vnet-subnet-address_prefixes

}

module "pip" {
    source = "./modules/LoadBalancer"
    resource-group-name = module.resource-group.resource-group-name
    pip-name            = var.pip-name
    location            = module.resource-group.location
    pip-allocation_method   = var.pip-allocation_method
    LB-name               = var.LB-name
    LB-FEIP-name          = var.LB-FEIP-name
    BEPool-name            = var.BEPool-name
    LBProbe-name            = var.LBProbe-name
    LBprobe-port            = var.LBprobe-port
    LBRule-name             = var.LBRule-name
    LBRule-protocol              = var.LBRule-protocol
    LBRule-frontend-port                  = var.LBRule-frontend-port
    LBRule-backend-port                 = var.LBRule-backend-port 
    NSG-name              = var.NSG-name
    NSR-name = var.NSR-name
    NSR-priority = var.NSR-priority
    NSR-direction = var.NSR-direction
    NSR-access = var.NSR-access
    NSR-protocol = var.NSR-protocol
    NSR-source_port_range = var.NSR-source_port_range
    NSR-destination_port_range = var.NSR-destination_port_range
    NSR-source_address_prefix = var.NSR-source_address_prefix
    NSR-destination_address_prefix = var.NSR-destination_address_prefix
}

module "APGWSUBNT" {
    source = "./modules/ApplicationGateway"
    resource-group-name = module.resource-group.resource-group-name
    location = module.resource-group.location
    vnet-name = module.vnet.vnet-name
    APGWSUBNT-name = var.APGWSUBNT-name
    APGWSUBNT-address_prefixes = var.APGWSUBNT-address_prefixes
    pipAG-name = var.pipAG-name
    pipAG-allocation_method = var.pipAG-allocation_method
    pipAG-sku = var.pipAG-sku
    APGW-name = var.APGW-name
    APGW-sku-name = var.APGW-sku-name
    APGW-sku-tier = var.APGW-sku-tier
    APGW-sku-capacity = var.APGW-sku-capacity
    APGW-GIP-name = var.APGW-GIP-name
    APGW-FEPORT-name = var.APGW-FEPORT-name
    APGW-FEPORT-port = var.APGW-FEPORT-port
    APGW-FEIP-name = var.APGW-FEIP-name
    APGW-BEPOOL-name = var.APGW-BEPOOL-name
    APGW-BPST-name = var.APGW-BPST-name
    APGW-BPST-cookie_based_affinity = var.APGW-BPST-cookie_based_affinity
    APGW-BPST-port = var.APGW-BPST-port
    APGW-BPST-protocol = var.APGW-BPST-protocol
    APGW-BPST-request_timeout = var.APGW-BPST-request_timeout
    APGW-BPLS-name = var.APGW-BPLS-name
    APGW-BPLS-protocol = var.APGW-BPLS-protocol
    APGW-BPRR-name = var.APGW-BPRR-name
    APGW-BPRR-rule_type = var.APGW-BPRR-rule_type
    APGW-BPRR-priority = var.APGW-BPRR-priority
}

module "BSTN-SB1" {
  source = "./modules/Bastion"
    resource-group-name = module.resource-group.resource-group-name
    location = module.resource-group.location
    vnet-name = module.vnet.vnet-name
    BSTN-SB1-name = var.BSTN-SB1-name
    BSTN-SB1-address_prefixes = var.BSTN-SB1-address_prefixes
    BSTN-pip-name = var.BSTN-pip-name
    BSTN-pip-allocation_method = var.BSTN-pip-allocation_method
    BSTN-pip-sku = var.BSTN-pip-sku
    BHOST-name = var.BHOST-name
    BHOST-ip-name = var.BHOST-ip-name
}

module "Nat-SB" {
  source = "./modules/NAT"
    resource-group-name = module.resource-group.resource-group-name
    location = module.resource-group.location
    vnet-name = module.vnet.vnet-name
    Nat-SB-name = var.Nat-SB-name
    Nat-SB-address_prefixes = var.Nat-SB-address_prefixes
    NAT-pip-name = var.NAT-pip-name
    NAT-pip-allocation_method = var.NAT-pip-allocation_method
    NAT-pip-sku = var.NAT-pip-sku
    NAT-GWY-name = var.NAT-GWY-name
    NAT-GWY-sku_name = var.NAT-GWY-sku_name
}
