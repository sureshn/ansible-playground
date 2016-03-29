#Ansible Playground #

![tmuxinator ansible-playground](https://s30.postimg.org/ajwn8n0up/ansible-playground.png)

This is a simple utility repository to bootstrap Ansible playground. It uses VirtualBox and Vagrant to provision:

* 1 VM to be Master Orchestrator  (available at 192.168.100.100)
* n VMs (2 by default) to be DevOps Servers (available at 192.168.100.10[1-9])

###Installation###

* Install the latest version of [VirtuaBox](https://www.virtualbox.org/wiki/Downloads) and VirtualBox extension
* Install [Vagrant](http://www.vagrantup.com/downloads.html)
* Clone this repository:
```
$ git clone git@github.com:sureshn/ansible-playground.git
$ cd ansible-playground
```
* Start VMs (it will create 3 VMs and provision Ansible). There will also be a hosts file which will be created at /etc/ansible/hosts) which defines a new group named `dev` which contains the DevOps servers.
* Create and provision all VM's:
```
$ vagrant up && vagrant provision
```

Once the VM's are up and running, install [tmuxinator](https://github.com/tmuxinator/tmuxinator) and run `mux`. This will connect to the provisioned 3 Vagrant VM's.

In order for the Master Orchestrator to Communicate with the DevOps Servers, generate a new SSH key in the master shell using `ssh-keygen` and copy the new key to the DevOps machines:

```
vagrant@master:~$ ssh-keygen
...
vagrant@master:~$ ssh-copy-id vagrant@192.168.100.101
...
vagrant@master:~$ ssh-copy-id vagrant@192.168.100.102
...
```

The password for the `vagrant` user on all machines is `vagrant`.

###Usage###

```
vagrant@master:~$ ansible dev -a "uptime"

192.168.100.101 | success | rc=0 >>
07:49:11 up  1:22,  2 users,  load average: 0.00, 0.01, 0.05

192.168.100.102 | success | rc=0 >> 
 07:49:11 up  1:19,  2 users,  load average: 0.00, 0.01, 0.05
```
