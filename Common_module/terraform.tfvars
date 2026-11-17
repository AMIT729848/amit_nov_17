resource_group = {
  rg1 = {
    rg_name     = "RG3_chodu"
    rg_location = "Central India"
  }

  rg2 = {
    rg_name     = "RG4_chodu"
    rg_location = "Central India"
  }
}

storages = {
  sa1 = {
    name                     = "storageamit433"
    resource_group_name      = "RG1_chodu"
    location                 = "Central India"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
  sa2 = {
    name                     = "storageamit444"
    resource_group_name      = "RG1_chodu"
    location                 = "Central India"
    account_tier             = "Standard"
    account_replication_type = "GRS"
  }
}

vnet_group = {
  vnet1 = {
    name                = "prod_vnet_03"
    location            = "Central India"
    resource_group_name = "RG1_chodu"
    address_space       = ["10.3.0.0/16"]
  }
  vnet2 = {
    name                = "prod_vnet_04"
    location            = "Central India"
    resource_group_name = "RG1_chodu"
    address_space       = ["10.4.0.0/16"]
  }
}
subnet_state = {
  subnet1 = {
    name                 = "subnet_frontend1"
    resource_group_name  = "RG1_chodu"
    virtual_netowrk_name = "prod_vnet_01"
    address_prefixes     = ["10.1.4.0/24"]

  }

  subnet2 = {
    name                 = "subnet_backen"
    resource_group_name  = "RG1_chodu"
    virtual_netowrk_name = "prod_vnet_01"
    address_prefixes     = ["10.1.5.0/24"]

  }

  subnet3 = {
    name                 = "subnet_databas"
    resource_group_name  = "RG1_chodu"
    virtual_netowrk_name = "prod_vnet_01"
    address_prefixes     = ["10.1.6.0/24"]

  }
}