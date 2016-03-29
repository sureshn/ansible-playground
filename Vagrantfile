Vagrant.configure("2") do |config|
  config.vm.define "master" do |master|
    master.vm.box = "hashicorp/precise64"
    master.vm.network "private_network", ip: "192.168.100.100"
    master.vm.hostname = "master"
    master.vm.provision "shell", path: "prepare.sh"
    master.vm.provision "shell", inline: "sudo apt-get -y install ansible"
    master.vm.provision "shell", inline: "sudo echo '[dev]' >> /etc/ansible/hosts"
    master.vm.provision "shell", inline: "sudo echo '192.168.100.101' >> /etc/ansible/hosts"
    master.vm.provision "shell", inline: "sudo echo '192.168.100.102' >> /etc/ansible/hosts"
  end

  devops_COUNT = 2

  (1..devops_COUNT).each do |devops_id|
    config.vm.define "devops#{devops_id}" do |devops|
      devops.vm.box = "hashicorp/precise64"
      devops.vm.network "private_network", ip: "192.168.100.#{devops_id + 100}"
      devops.vm.hostname = "devops#{devops_id}"
      devops.vm.provision "shell", path: "prepare.sh"
      devops.vm.provision "shell", inline: "sudo apt-get -y install ansible"
    end
  end
end
