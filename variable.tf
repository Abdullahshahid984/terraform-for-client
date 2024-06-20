variable "resource_group_name" {
  description = "rg"
  type        = string
  default     = "terraform-rg"
}

variable "location" {
  description = "Azure region where the resources will be deployed"
  type        = string
  default     = "eastus2"  # Set your preferred default location
}


variable "vnet_cidr" {
  description = "CIDR for the VNet"
  type        = string
  default     = "10.0.0.0/28"
}

variable "subnet_cidr" {
  description = "CIDR for the Subnet"
  type        = string
  default     = "10.0.0.0/28"
}

variable "ssh_public_key" {
  description = "SSH Public Key"
  type        = string
  default     = "placeholder_ssh_public_key"
}
