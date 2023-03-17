module "vnet" {
  source                     = ".//vnet"
  resource_group_name        = "hub-rg"
  create_resource_group = true
  location = "eastus"
  dns_server_ip              = ["8.8.8.8"]
  vnet_address_space         = ["10.0.0.0/16"]
  prefix                     = "hub"
  firewall_service_endpoints = null
  gateway_service_endpoints  = null
  tags = {
    Env          = "non-prod"
  }
  subnets = {
    subnet_1 = {
      name             = "subnet-1"
      address_prefixes = ["10.0.1.0/24"]
    },
    subnet_2 = {
      name             = "subnet-2"
      address_prefixes = ["10.0.2.0/24"]
    }
  }
}
