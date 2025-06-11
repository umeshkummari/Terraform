terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=2.0.0"
    }
  }
  required_version = ">=1.0.0"
}

provider "azurerm" {
  features {}
  subscription_id = "f5380571-80ae-4c56-b0e5-9d1c2ddfb488"
}

resource "azurerm_resource_group" "MyRG" {
    name = "prod-RG1"
    location = "East Us"
}

resource "azurerm_virtual_network" "myvnet" {
  name = "prodvnet"
  resource_group_name = azurerm_resource_group.MyRG.name
  location = azurerm_resource_group.MyRG.location
  address_space = [ "10.0.0.0/16" ]
}

resource "azurerm_subnet" "mysubnet" {
  name = "prodsubnet"
  resource_group_name = azurerm_resource_group.MyRG.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
  address_prefixes = [ "10.0.0.0/24" ]
}