resource-group-name = "RG1"
location = "East US"
vnet-name = "Vnet1"
vnet-address-space = ["10.0.0.0/16"]
subnet-name = "subnet1"
subnet-address-prefix = ["10.0.0.0/27"]
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
APGWSUBNT-address_prefixes = ["10.0.0.0/26"]
pipAG-name = "AGWPIP"
pipAG-allocation_method = "Static"
pipAG-sku = "Standard"
APGW-name = "APP-GATEWAY"
APGW-sku-name = "Standard_v2"
APGW-sku-tier = "Standard_v2"
APGW-sku-capacity = 2
GIP-name = "GW-IP-config"
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


















