(WIP)
# Terraform Configuration for VMware vSphere Virtual Machine Provisioning

This Terraform configuration is designed to facilitate the provisioning of virtual machines on VMware vSphere infrastructure. It offers flexibility in configuring various aspects of VM deployment, including CPU, RAM, disk size, network settings, and more.

## Configuration

(Pending)
This configuration allows customization of various parameters, including:

- `vm_cpu`: Number of vCPUs for each virtual machine.
- `vm_ram`: Amount of memory allocated to each VM (in MB).
- `vm_name`: Name of the virtual machine.
- `vm_size`: Disk size of the VM (in GB).
- `vm_network`: Name of the VM network.
- `vsphere_user`: Username for accessing vSphere.
- `vsphere_password`: Password for accessing vSphere.
- `vsphere_ip_address`: IP address of the vCenter server.
- `vsphere_datacenter`: Name of the vSphere datacenter.
- `vsphere_cluster`: Name of the vSphere cluster.
- `datastore`: Name of the vSphere datastore.
- `guest_id`: ID of the guest operating system.
- `path`: Path for the CD-ROM.

## Variables

Variables are used in an efffort to not hard code passwords

Ensure to adjust these parameters according to your specific requirements and environment configuration.

## Contributions

Contributions to this project, whether in the form of bug fixes, enhancements, or feature additions, are highly appreciated. Feel free to submit a pull request or open an issue to discuss potential improvements.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
