module "rg" {
  source = "../azurerm_resource_group"
  rgs    = var.resource_group

}

module "storage_account" {
  source           = "../azurerm_storage_group"
  storage_accounts = var.storages
  depends_on       = [module.rg]

}

module "vnets" {
  source     = "../azurerm_Vnet_group"
  vnets      = var.vnet_group
  depends_on = [module.rg]

}

module "subnets" {
  source       = "../azurerm_subnet_group"
  subnet_group = var.subnet_state
  depends_on   = [module.rg]

}