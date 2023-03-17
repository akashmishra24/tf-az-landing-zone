terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state"
    storage_account_name = "tfazstatestrg"
    container_name       = "tfstate"
    key                  = "hub-rg.tfstate"
  }
}

terraform {
  required_version = "1.4.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.35.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.3"
    }
  }
}

provider "azurerm" {
  features {
  }
}

provider "random" {
  # Configuration options
}
