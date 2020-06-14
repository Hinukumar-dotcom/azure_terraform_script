########################################################################################
variable "prefix" {
  default = "tfvmex"
}

#######################################################################################
resource "azurerm_virtual_network" "vNET_main_1" {
  name                = "${var.prefix}-network"
  location            = azurerm_resource_group.Terraform_Group.location
  resource_group_name = azurerm_resource_group.Terraform_Group.name
  address_space       = ["10.0.0.0/16"]
  #dns_servers         = azure_dns_server.google_dns.id

  ddos_protection_plan {
    id     = azurerm_network_ddos_protection_plan.ddos_protection_plan.id
    enable = true
  }


  tags = {
    Env = "Test"
  }
}
###########################################################################################

resource "azurerm_subnet" "Subnet-1" {
  name = "Subnet-1"
  resource_group_name  = azurerm_resource_group.Terraform_Group.name
  virtual_network_name = azurerm_virtual_network.vNET_main_1.name
  address_prefix       = "10.0.1.0/24"
}

##########################################################################################

 #resource "azure_dns_server" "google_dns" {
 # name        = "google"
 # dns_address = "8.8.8.8"
 #}

