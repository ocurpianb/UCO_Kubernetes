
# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	#se define el bloque multimaquina
        config.vm.define "master" do |app|
                app.vm.box = "bento/ubuntu-16.04"
                app.vm.network "private_network", ip: "10.0.1.2"
                app.vm.provision "shell", path: "config.sh"
                app.vm.hostname = "master"
		app.vm.synced_folder "shared", "/home/vagrant/projects",  mount_options: ["dmode=777,fmode=777"]
                app.vm.provider "virtualbox" do |v|
                        v.memory = 2048 
                        v.cpus = 2
			#v.customize ["modifyvm", :id, "--nic2", "natnetwork"]
     			#v.customize ["modifyvm", :id, "--nat-network2", "NatNetwork"]
                end
        end
	config.vm.define "worker1" do |app|
		app.vm.box = "bento/ubuntu-16.04"
		app.vm.network "private_network", ip: "10.0.1.3"
		app.vm.hostname = "worker1"
		app.vm.provision "shell", path: "config.sh"
		app.vm.provider "virtualbox" do |v|
			v.memory = 512
			v.cpus = 2
                        #v.customize ["modifyvm", :id, "--nic2", "natnetwork"]
                        #v.customize ["modifyvm", :id, "--nat-network2", "NatNetwork"]
		end
	end
	config.vm.define "worker2" do |app|
		app.vm.box = "bento/ubuntu-16.04"
		app.vm.network "private_network", ip: "10.0.1.4"
		app.vm.hostname = "worker2"
		app.vm.provision "shell", path: "config.sh"
		app.vm.provider "virtualbox" do |v|
			v.memory = 512 
			v.cpus = 2
                        #v.customize ["modifyvm", :id, "--nic2", "natnetwork"]
                        #v.customize ["modifyvm", :id, "--nat-network2", "NatNetwork"]
		end
	end
end
