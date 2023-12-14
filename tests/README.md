# Testing Environment Setup

## Requirements
Before setting up the test environment, ensure you have the following
prerequisites installed and configured:

- **Vagrant with Libvirt**: This environment relies heavily on Vagrant, coupled
  with Libvirt for virtualization.
- **KVM with Libvirt**: Kernel-based Virtual Machine (KVM) should be set up
  along with Libvirt for creating and managing virtual machines.
- **vagrant-libvirt Plugin**: This plugin is essential for Vagrant to work with
  Libvirt.

To install the vagrant-libvirt plugin, run the following command:

```bash
vagrant plugin install vagrant-libvirt
```

## Creating the Environment
To initialize the test environment, use the setup script provided. This script
will prepare the necessary components, including a Postgres cluster group in the
inventory. Run the following command to start the setup:

```bash
./setup
```

The `setup.sh` script performs the `vagrant up` command and sets up the required
Postgres cluster group.

## Testing the Role
To test the role, execute an Ansible playbook that configures a Postgres cluster
with a replica. Use the following command:

```bash
ansible-playbook -i .vagrant/provisioners/ansible/inventory -e
pg_node_primary=test-vm-1 main.yaml
```

This command specifies the inventory file and the primary node for the Postgres
cluster.

## Destroying the Environment
To clean up and destroy the test environment, use the cleanup script. This
script will remove all components created during the setup, including the
`.vagrant` directory. Execute the following:

```bash
./cleanup.sh
```

The `cleanup.sh` script runs `vagrant destroy -f` to safely remove all virtual
machines and associated configurations.
