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
