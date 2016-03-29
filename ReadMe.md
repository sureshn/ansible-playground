Ansible Playground

This is a simple utility repository to bootstrap Ansible playground. It uses VirtualBox and Vagrant to provision:

1 VM to be Master Orchestrator  (available at 192.168.100.100)
n VMs (2 by default) to be DevOps Servers (available at 192.168.100.10[1-9])

Installation

Install the latest version of VirtuaBox and VirtualBox extension
Install Vagrant
Clone this repository:
$ git clone https://github.com/sureshn/ansible-playground
$ cd ansible-playground

Start VMs (it will create 3 VMs and provision Ansible). There will also be a hosts file which will be created at /etc/ansible/hosts)
$ vagrant up && vagrant provision

Once the VM's are up and running 
Run mux start tmux_profile.yml
This will launch the provisioned 3 Vagrant VM's

In order for the Master Orchestrator to Communicate with the DevOps Server

Generate the SSH key in the master using command ssh-keygen and copy the generated id_rsa.pub key to the ~/.ssh/Authorized to devops1 and devops2 machines . In our case it will be 192.168.100.101 and 192.168.100.102 respectively.

The Passwords for all Vagrant VM's would be the same as user name.


