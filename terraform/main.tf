provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "dev-rg"
  location = "westeurope"
}

module "network" {
  source              = "./modules/network"
  vnet_name           = "dev-vnet"
  location            = "westeurope"
  resource_group_name = azurerm_resource_group.rg.name
}

module "acr" {
  source              = "./modules/acr"
  acr_name            = "devacr001"
  location            = "westeurope"
  resource_group_name = azurerm_resource_group.rg.name
}

module "monitoring" {
  source              = "./modules/monitoring"
  law_name            = "dev-law"
  location            = "westeurope"
  resource_group_name = azurerm_resource_group.rg.name
}

module "keyvault" {
  source              = "./modules/keyvault"
  kv_name             = "akssm-kv-2026-01"
  location            = "westeurope"
  resource_group_name = azurerm_resource_group.rg.name
}

module "aks" {
  source              = "./modules/aks"
  aks_name            = "dev-aks-cluster"
  location            = "westeurope"
  resource_group_name = azurerm_resource_group.rg.name
}
