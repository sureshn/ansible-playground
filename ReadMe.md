#Ansible Playground #

![tmuxinator ansible-playground](https://s30.postimg.org/ajwn8n0up/ansible-playground.png)

This is a simple utility repository to bootstrap Ansible playground. It uses VirtualBox and Vagrant to provision:

* 1 VM to be Master Orchestrator  (available at 192.168.100.100)
* n VMs (2 by default) to be DevOps Servers (available at 192.168.100.10[1-9])

###Installation###

1. Install the latest version of [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and VirtualBox extension
2. Install [Vagrant](http://www.vagrantup.com/downloads.html)
3. Clone this repository:
```
$ git clone git@github.com:sureshn/ansible-playground.git
$ cd salt-playground
```
4. Start VMs (it will create 3 VMs and provision Ansible). There will also be a hosts file which will be created at /etc/ansible/hosts)
5. $ cd ansible-playground
```
$ vagrant up && vagrant provision
```

Once the VM's are up and running 
Run mux start tmux_profile.yml
This will launch the provisioned 3 Vagrant VM's

```

In order for the Master Orchestrator to Communicate with the DevOps Server

Generate the SSH key in the master using command ssh-keygen and copy the generated 
id_rsa.pub key to the ~/.ssh/Authorized to devops1 and devops2 machines .
In our case it will be 192.168.100.101 and 192.168.100.102 respectively.

The Passwords for all Vagrant VM's would be the same as user name.

```
###Usage###

vagrant@master:~$ ansible dev -i /etc/ansible/hosts -m command -a "uptime" -u vagrant 

```
192.168.100.101 | success | rc=0 >>
07:49:11 up  1:22,  2 users,  load average: 0.00, 0.01, 0.05

192.168.100.102 | success | rc=0 >> 
 07:49:11 up  1:19,  2 users,  load average: 0.00, 0.01, 0.05

 ```

###Setting Up tmuxinator###

```
Visit the [tmuxinator](https://github.com/tmuxinator/tmuxinator) github page and 
follow the instructions on how to set it up

```


