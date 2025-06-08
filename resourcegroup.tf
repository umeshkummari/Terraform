#Terraform block

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=2.0.0" #provider version ie (azure rm version)
    }
  }
  required_version = ">=1.0.0" #terraform version
}


#provider block

provider "azurerm" {
  resource_provider_registrations = "none"
  features {}
  subscription_id = "f5380571-80ae-4c56-b0e5-9d1c2ddfb488"
}

#resource block

resource "azurerm_resource_group" "Firstresource" {
  location = "East Us"
  name = "rg1"
}
