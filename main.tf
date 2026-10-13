terraform{
    required_version = ">= 1.15.0"
    required_providers {
      azurerm= {
        source = "hashicorp/azurerm"
        version = ">= 4.81.0"
      }
    }
    backend "azurerm"{
        resource_group_name = "value"
        storage_account_name = "value"
        container_name = "value"
        key = "value"
    }
}

provider "azurerm" {
 features{}
subscription_id = ""
}

resource "azurerm_resource_group" "test"{
  name = ""
  location = ""
}
