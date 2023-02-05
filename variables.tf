variable "resource_group_name" {
  description = "(Required)A container that holds related resources for an Azure solution."
  type        = string
}

variable "location" {
  description = "(Required)The location to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'."
  type        = string
}

variable "virtual_network_name" {
  description = "(Required)Virtual network name to attach the subnet."
  type        = string
}

variable "subnet_name" {
  description = "(Required)Subnet name."
  type        = string
}

variable "subnet_address_prefixes" {
  description = "(Required)Subnet address prefix."
  type        = list(string)
}

variable "route_table_id" {
  description = "(Optional)Id of route table to associate to the subnet."
  type        = string
  default     = null
}

variable "network_security_group_id" {
  description = "(Optional)Id of network security group to associate to the subnet."
  type        = string
  default     = null
}