# Managed Identity
resource "azurerm_user_assigned_identity" "identity" {
  name                = "terraform-agent-identity"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}
