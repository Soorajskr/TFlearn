resource "azurerm_virtual_network" "vnet" {
  name                = var.Vnet
  address_space       = ["10.0.0.0/16"]
  location            = var.Location
  resource_group_name = var.Resource_Group
}

resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet1
  resource_group_name  = var.Resource_Group
  virtual_network_name = var.Vnet
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "subnet2" {
  name                 = var.subnet2
  resource_group_name  = var.Resource_Group
  virtual_network_name = var.Vnet
  address_prefixes     = ["10.0.2.0/24"]
}