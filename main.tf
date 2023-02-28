

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "RG" {
  name     = "TestResourcegroup"
  location = "West Europe"
}

resource "azurerm_storage_account" "storage" {
  name                     = "storagetest1453"
  resource_group_name      = azurerm_resource_group.RG.name
  location                 = azurerm_resource_group.RG.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
variable "instance_type" {
    type = string
    description = "instance type t2.micro"
    default = "t2.micro"
  }