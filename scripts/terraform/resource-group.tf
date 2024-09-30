# Your Solution
#
# Creates a resource group for Library App in Azure account.
#
resource "azurerm_resource_group" "Library" {
  name     = var.app_name
  location = var.location
}
