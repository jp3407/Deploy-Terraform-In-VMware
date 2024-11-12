terraform {
    required_providers {
        vsphere = {
            source = "hashicorp/vsphere"
            version = ">= 2.0" 
        }
    }
}

provider "vsphere" {
    user                = "${var.vusername}"
    password            = "${var.vpassword}"
    vsphere_server      = "${var.vcenter}"
    allow_unverified_ssl = true
}

#Data Sources
data "vsphere_datacenter" "datacenter" {
    name = "${var.vdatacenter}"
}

#Resources
resource "vsphere_folder" "parent" {
    path        = "Dev"
    type        = "vm"
    datacenter_id = data.vsphere_datacenter.datacenter.id
}

resource "vsphere_folder" "Databases" {
    path        = "${vsphere_folder.parent.path}/Databases"
    type        = "vm"
    datacenter_id = data.vsphere_datacenter.datacenter.id
}

resource "vsphere_folder" "File_Servers" {
    path        = "${vsphere_folder.parent.path}/File Servers"
    type        = "vm"
    datacenter_id = data.vsphere_datacenter.datacenter.id
}

resource "vsphere_folder" "Management" {
    path        = "${vsphere_folder.parent.path}/Management"
    type        = "vm"
    datacenter_id = data.vsphere_datacenter.datacenter.id
}

resource "vsphere_folder" "Web" {
    path        = "${vsphere_folder.parent.path}/Web"
    type        = "vm"
    datacenter_id = data.vsphere_datacenter.datacenter.id
}

#Output
output "ID" {
  value = "${data.vsphere_datacenter.datacenter.id}"
}