# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provision :shell, path: "machine"
  config.vm.provision :shell, path: "vagrant"

  config.push.define "atlas" do |push|
    push.app = "adamalex/helloweb"
  end
end
