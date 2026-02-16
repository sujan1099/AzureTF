variable "rgname" {
  type = string
  description = "To define resource group name"
}

variable "location" {
  type = string
  description = "To define location of the resource group"
  default = "West Europe"
}

variable "sujan" {
  type = string
  description = "To define the name of the infrastructure"
  
}

variable "vnet_cidr_block" {
  type = string
  description = "To define the address space of the virtual network"
  default = "10.0.0.0/16"
}

variable "subnet_prefix" {
  type = string
  description = "To define the address prefix of the subnet"
  default = "10.0.2.0/24"
}

variable "size" {
  type = string
  description = "To define the size of the virtual machine"
  default = "Standard_F2"
}