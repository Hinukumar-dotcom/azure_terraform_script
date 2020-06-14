
resource "azurerm_resource_group" "Terraform_Group" {
  name     = "Terraform_Group"
  location = "West Europe"

  tags = {
    owner = "Hinukumar"
    Env = "Test"
  }
}


