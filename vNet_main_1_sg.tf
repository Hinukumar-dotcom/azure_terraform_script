
resource "azurerm_network_security_group" "vNET_main_1_sg" {
  name                = "vNET_main_1_sg"
  location            = azurerm_resource_group.Terraform_Group.location
  resource_group_name = azurerm_resource_group.Terraform_Group.name
}


