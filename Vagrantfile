# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  #config.vm.box_url = "https://www.arangodb.org/documents/precise64-arangodb.box"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/arangodb.yml"
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 512
    v.cpus = 2
  end

  4.times do |t|
    name = "arangodb-node-#{t}"
    config.vm.define name do |node|
      node.vm.hostname = name
      node.vm.network "private_network", ip: "192.168.77.#{10 + t}"
    end
  end
end
