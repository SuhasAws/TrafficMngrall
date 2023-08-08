variable "resource-group-name" {
    type = string
    description = "Resource Group Name"
}

variable "location" {
    type = string
    description = "Location for deployment"
}

variable "vnet-name" {
    type = string
    description = "Virtual Network Name"
}

variable "vnet-address-space" {
    type = list(string)
    description = "Address space of virtual network"
}
variable "vnet-subnet-name" {
    type = string
    description = "Name of vnet subnet"
}

variable "vnet-subnet-address_prefixes" {
    type = list(string)
    description = "Address prefix of vnet subnet"
}

variable "pip-name" {
    type = string
    description = "Public IP name for Load Balancer"
}

variable "pip-allocation_method" {
    type = string
    description = "public IP allocation method"
}

variable "LB-name" {
    type = string
    description = "Name of Load Balancer"
}

variable "LB-FEIP-name" {
    type = string
    description = "Name of Front end IP"
}

variable "BEPool-name" {
    type = string
    description = "Name of Backend Pool"
}

variable "LBProbe-name" {
    type = string
    description = "Name of Probe"
}

variable "LBprobe-port" {
    type = number
    description = "Port number of Probe"
}

variable "LBRule-name" {
    type = string
    description = "Name of LB Rule"
}

variable "LBRule-protocol" {
    type = string
    description = "Protocol of LB Rule"
}

variable "LBRule-frontend-port" {
    type = number
    description = "port number of frontend"
}

variable "LBRule-backend-port" {
    type = number
    description = "port number of backend"
}

variable "frontend_ip_configuration_name" {
    type = string
    description = "Front End IP Name"
}

variable "NSG-name" {
    type = string
    description = "Network Security Group Name"
}

variable "APGWSUBNT-name" {
    type = string
    description = "Name of Subnet"
}

variable "APGWSUBNT-address_prefixes" {
    type = list(string)
    description = "address prefix of subnet"
}
variable "pipAG-name" {
    type = string
    description = "Name of Public IP"
}
variable "pipAG-allocation_method" {
    type = string
    description = "Allocation method of public ip"
}
variable "pipAG-sku" {
    type = string
    description = "sku of public ip"
}
variable "APGW-name" {
    type = string
    description = "name of application gateway"
}
variable "APGW-sku-name" {
    type = string
    description = "sku name of application gateway"
}

variable "APGW-sku-tier" {
    type = string
    description = "tier of application gateway"
}
variable "APGW-sku-capacity" {
    type = number
    description = "capacity of sku"
}
variable "APGW-GIP-name" {
    type = string
    description = "name of gateway ip configuration"
}
variable "APGW-FEPORT-name" {
    type = string
    description = "name of frontendport"
}
variable "APGW-FEPORT-port" {
    type = number
    description = "port number of frontend port"
}
variable "APGW-FEIP-name" {
    type = string
    description = "name of frontend ip configuration"
}
variable "APGW-BEPOOL-name" {
    type = string
    description = "name of backend address pool"
}
variable "APGW-BPST-name" {
    type = string
    description = "name of backend http settings"
}
variable "APGW-BPST-cookie_based_affinity" {
    type = string
    description = "= cookie based affinity"
}
variable "APGW-BPST-port" {
    type = number
    description = "port number of backend http settings"
}
variable "APGW-BPST-protocol" {
    type = string
    description = "protocol of backend http settings"
}
variable "APGW-BPST-request_timeout" {
    type = number
    description = "request timeout number"
}
variable "APGW-BPLS-name" {
    type = string
    description = "name of backend http listener"
}
variable "APGW-BPLS-protocol" {
    type = string
    description = "protocol of backend http listener"
}
variable "APGW-BPRR-name" {
    type = string
    description = "name of backend request routing rule"
}
variable "APGW-BPRR-rule_type" {
    type = string
    description = "rule type of backend request routing rule"
}
variable "APGW-BPRR-priority" {
    type = number
    description = "priority of backend request routing rule"
}
variable "BSTN-SB1-name" {
    type = string
    description = "Name of Bastion Subnet"
}
variable "BSTN-SB1-address_prefixes" {
    type = list(string)
    description = "Address prefix of bastion subnet"
}
variable "BSTN-pip-name" {
    type = string
    description = "Name of Bastion Public IP"
}
variable "BSTN-pip-allocation_method" {
    type = string
    description = "Allocation method of bastion public ip"
}
variable "BSTN-pip-sku" {
    type = string
    description = "sku of bastion public ip"
}
variable "BHOST-name" {
    type = string
    description = "Name of Bastion Host "
}
variable "BHOST-ip-name" {
    type = string
    description = "name of bastion host ip config"
}
variable "Nat-SB-name" {
    type = string
    description = "Name of Nat Subnet"
}
variable "Nat-SB-address_prefixes" {
    type = list(string)
    description = "Address prefix of nat subnet"
}
variable "NAT-pip-name" {
    type = string
    description = "Name of NAT Public IP"
}
variable "NAT-pip-allocation_method" {
    type = string
    description = "Allocation method of NAT Public IP"
}
variable "NAT-pip-sku" {
    type = string
    description = "SKU of Nat Public IP"
}
variable "NAT-GWY-name" {
    type = string
    description = "Name of NAT Gateway"
}
variable "NAT-GWY-sku_name" {
    type = string
    description = "Name of NAT Gateway SKU"
}

