# Linux VM
resource "azurerm_linux_virtual_machine" "vm" {
  name                = "terraform-agent-vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B1s"
  admin_username      = "azureuser"
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]
  admin_ssh_key {
    username   = "azureuser"
    public_key = var.ssh_public_key
  }
  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.identity.id]
  }
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "YourCustomPublisher"  # Replace with your custom image publisher
    offer     = "YourCustomOffer"      # Replace with your custom image offer
    sku       = "YourCustomSKU"        # Replace with your custom image SKU
    version   = "latest"               # Replace with your custom image version
  }
}

# Output
output "vm_public_ip" {
  value = azurerm_linux_virtual_machine.vm.public_ip_address
}
