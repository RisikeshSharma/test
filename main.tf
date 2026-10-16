terraform{
    required_version = ">= 1.15.0"
    required_providers {
      azurerm= {
        source = "hashicorp/azurerm"
        version = ">= 4.81.0"
      }
    }
    backend "azurerm"{
        resource_group_name = "Vaishno-RG"
        storage_account_name = "vaishnostg1218"
        container_name = "vaishnocontainer"
        key = "terraform.tfstate"
    }
}

provider "azurerm" {
 features{}
subscription_id = "ef92bd07-6174-4c69-bd96-a45068ac3d8c"
}

resource "azurerm_resource_group" "RG21"{
  name = "RG1211"
  location = "Central India"
}
