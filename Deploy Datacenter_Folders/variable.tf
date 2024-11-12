variable "vusername" {
    type = string
    description = "Enter username for vcenter"
    default = "administrator@jplabs.local"
}

variable "vpassword" {
    type = string
    description = "Enter password for vcenter"
}

variable "vcenter" {
    type = string
    description = "Enter vcenter name or ip"
    default = "192.168.15.135"
}

variable "vdatacenter" {
    type = string
    description = "Enter dc name"
    default = "Prod_Datacenter"
}

variable "vparent_folder" {
    type = string
    description = "Enter parent folder name"
    default = "Dev"
}