#Creating a virtual network

resource "azurerm_virtual_network" "myvnet" {
  resource_group_name = "rg1"
  location = "East Us"
  name = "vnet1"
  address_space = [ "10.0.0.0/16" ]
}

#Creating a subnet

resource "azurerm_subnet" "mysubnet" {
 name = "SubnetA"
virtual_network_name = "vnet1"
resource_group_name = "rg1"
address_prefixes = [ "10.0.0.0/24" ]
}