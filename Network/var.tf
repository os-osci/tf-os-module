/*
variable "Network_name" {
  description = ""
}


variable "Network_vnet_address_space" {
  description = ""
}
variable "Network_asesubnet_name" {
  description = ""
}
variable "Network_asesubnet_address_space" {
  description = ""
}
variable "Network_vmsubnet_name" {
  description = ""
}
variable "Network_vmsubnet_address_space" {
  description = ""
}
*/

variable "vnet_config" {
  description = ""
  type = object({
    name = string
    address_space = list(string)
    resource_group_name = string
    location = string
    subnets = list(object({
      name = string
      address_space = list(string)
    }))
  })
}

/*
variable "Network_location" {
  description = ""
}
variable "Network_rg_name" {
  description = ""
}
*/