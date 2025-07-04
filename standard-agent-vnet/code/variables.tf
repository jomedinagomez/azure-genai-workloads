## As of 6/2025 this is limited to RFC1918 Class B and Class C address space
variable "virtual_network_address_space" {
  description = "The address space for the virtual network"
  type        = string
  default     = "192.168.0.0/16"
}

variable "agent_subnet_address_prefix" {
  description = "The address prefix for the subnet that will be delegated to the Standard Agent"
  type        = string
  default     = "192.168.0.0/24"
}

variable "private_endpoint_subnet_address_prefix" {
  description = "The address prefix for the subnet that contains the private endpoints"
  type        = string
  default     = "192.168.1.0/24"
}

variable "location" {
  description = "The name of the location to provision the resources to"
  type        = string
}

variable "subscription_id" {
  description = "The Azure subscription ID to use for resource deployment."
  type        = string
}

variable "jumpbox_subnet_address_prefix" {
  description = "The address prefix for the subnet that will contain the jumpbox VM."
  type        = string
  default     = "192.168.2.0/24"
}

variable "jumpbox_admin_username" {
  description = "The admin username for the jumpbox VM."
  type        = string
}

variable "jumpbox_admin_password" {
  description = "The admin password for the Windows jumpbox VM. Must meet Azure complexity requirements."
  type        = string
  sensitive   = true
}