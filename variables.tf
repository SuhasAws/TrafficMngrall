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
