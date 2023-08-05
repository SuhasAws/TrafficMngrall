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
variable "subnet-name" {
    type = string
    description = "Name of vnet subnet"
}

variable "subnet-address-prefix" {
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

variable "NSRule-name" {
    type = string
    description = "Network Security Rule name"
}

variable "NSRule-priority" {
    type = number
    description = "Priority of NSRule"
}

variable "NSRule-direction" {
    type = string
    description = "Direction of NSRule"
}

variable "NSRule-access" {
    type = string
    description = "Permission to access"
}

variable "NSRule-protocol" {
    type = string
    description = "Protocol of NSRule"
}

variable "NSRule-source_port_range" {
    type = number
    description = "NSGRule Source Port Range"
}

variable "NSRule-destination_port_rangee" {
    type = number
    description = "NSGRule Destination Port Range"
}

variable "NSRule-source_address_prefix" {
    type = number
    description = "NSRule-source_address_prefix"
}

variable "NSRule-destination_address_prefix" {
    type = string
    description = "NSRule-destination_address_prefix"
}


