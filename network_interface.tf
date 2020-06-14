
resource "azurerm_network_interface" "network_interface" {
  name                = "${var.prefix}-nic"
  location            = azurerm_resource_group.Terraform_Group.location
  resource_group_name = azurerm_resource_group.Terraform_Group.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.Subnet-1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.assign_public_ip.id

  }
}

resource "azurerm_public_ip" "assign_public_ip" {
  name                = "TestPublicIp1"
  location            = "West Europe"
  resource_group_name = azurerm_resource_group.Terraform_Group.name
  allocation_method   = "Dynamic"
  idle_timeout_in_minutes = 30

}



