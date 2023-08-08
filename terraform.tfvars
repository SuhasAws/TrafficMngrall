resource-group-name = "RG1"
location = "East US"
vnet-name = "Vnet1"
vnet-address-space = ["10.0.0.0/16"]
vnet-subnet-name = "VnetSubnet"
vnet-subnet-address_prefixes = ["10.0.2.0/24"]
pip-name = "PublicIPForLB"
pip-allocation_method = "Static"
LB-name = "TestLoadBalancer"
LB-FEIP-name = "PublicIPAddress"
BEPool-name = "BEPool"
LBProbe-name = "ssh-running-probe"
LBprobe-port = 22
LBRule-name = "LBRule"
LBRule-protocol = "Tcp"
LBRule-frontend-port = 3389
LBRule-backend-port = 3389
frontend_ip_configuration_name = "PublicIPAddress"
NSG-name = "NSG"
APGWSUBNT-name = "Subnet-APGW"
APGWSUBNT-address_prefixes = ["10.0.1.0/24"]
pipAG-name = "AGWPIP"
pipAG-allocation_method = "Static"
pipAG-sku = "Standard"
APGW-name = "APP-GATEWAY"
APGW-sku-name = "Standard_v2"
APGW-sku-tier = "Standard_v2"
APGW-sku-capacity = 2
APGW-GIP-name = "GW-IP-config"
APGW-FEPORT-name = "FrontendPort"
APGW-FEPORT-port = 80
APGW-FEIP-name = "FEIP-Config_Name"
APGW-BEPOOL-name = "BackendPool"
APGW-BPST-name = "BP-HTTPsetting"
APGW-BPST-cookie_based_affinity = "Disabled"
APGW-BPST-port = 80
APGW-BPST-protocol = "Http"
APGW-BPST-request_timeout = 80
APGW-BPLS-name = "BP-Listener"
APGW-BPLS-protocol = "Http"
APGW-BPRR-name = "Routing-Rule"
APGW-BPRR-rule_type = "Basic"
APGW-BPRR-priority = 1
BSTN-SB1-name = "AzureBastionSubnet"
BSTN-SB1-address_prefixes = ["10.0.3.0/24"]
BSTN-pip-name = "Bastion-PIP"
BSTN-pip-allocation_method = "Static"
BSTN-pip-sku = "Standard"
BHOST-name = "Bastion-HOST"
BHOST-ip-name = "BSTN-ipconfig"
Nat-SB-name = "NAT-SUBNET"
Nat-SB-address_prefixes = ["10.0.4.0/24"]
NAT-pip-name = "NAT-public-ip"
NAT-pip-allocation_method = "Static"
NAT-pip-sku = "Standard"
NAT-GWY-name = "NAT-GATEWAY"
NAT-GWY-sku_name = "Standard"
