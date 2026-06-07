provider "azurerm" {
  features {}
}

module "network" {
  source              = "../../modules/network"
  vnet_name           = "dev-vnet"
  location            = "westeurope"
  resource_group_name = "dev-rg"
}

module "acr" {
  source              = "../../modules/acr"
  acr_name            = "devacr001"
  resource_group_name = "dev-rg"
  location            = "westeurope"
}

module "monitoring" {
  source              = "../../modules/monitoring"
  law_name            = "dev-law"
  resource_group_name = "dev-rg"
  location            = "westeurope"
}

module "keyvault" {
  source              = "../../modules/keyvault"
  kv_name             = "dev-kv-001"
  resource_group_name = "dev-rg"
  location            = "westeurope"
}
