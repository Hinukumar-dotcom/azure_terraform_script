

resource "azurerm_network_ddos_protection_plan" "ddos_protection_plan" {
  name                = "ddos_protection_plan"
  location            = azurerm_resource_group.Terraform_Group.location
  resource_group_name = azurerm_resource_group.Terraform_Group.name
}

