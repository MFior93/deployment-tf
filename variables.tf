provider "azurerm" {
    subscription_id = "d5c73fb6-3e1a-4942-92d5-6acf6d976b93"
    client_id       = "197a614c-3f75-49a6-9009-2656dbd5e64b"
    client_secret   = "]ayc[T/:0IToaNlFNlQ2EnA4acYDxA4/"
    tenant_id       = "0fbcd888-3f1c-411d-b2f8-dac6097b0b3b"
    version         = "2.0.0"
features {}
}
variable "location" {
  description = "The default Azure region for the resource provisioning"
  default = "westeurope"
}

variable "rg_name" {
  description = "Resource group name that will contain resources"
  default = "RG-mfior"
}

variable "vnet_ip_main" {
  description = "IP for Virtual Network"
  default = "10.10.0.0/16"
}

variable "subnet_ip_master" {
    description = "Subnet for mgmt servers"
    default = "10.10.1.0/24"
}
variable "subnet_ip_f" {
  description = "IP for Subnet f within a Virtual Network"
  default = "10.10.2.0/24"
}

variable "subnet_ip_b" {
  description = "IP for Subnet b within a Virtual Network"
  default = "10.10.3.0/24"
}

variable "vm_username" {
  description = "Enter admin username"
  default = "adminfior"
}

variable "vm_password" {
  description = "Enter admin password"
  default = "RedBrick22#"
}

variable "nsg_front" {
  default = "nsg-front"
}

variable "nsg_back" {
  default = "nsg-back"
}




