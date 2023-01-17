 resource "azurerm_resource_group" "rgnmd" {
 name = var.rgname
 location = var.rglocation
 }

 resource "azurerm_managed_disk" "rgnmd" {
  name = var.diskname
  resource_group_name = azurerm_resource_group.rgnmd.name
  location = azurerm_resource_group.rgnmd.location
  storage_account_type = var.satype
  create_option        = "Empty"
  disk_size_gb         = var.disksize

  tags = {
    environment = "staging"
  }
 }