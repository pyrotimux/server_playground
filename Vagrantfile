# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.provider "virtualbox" do |v|
    v.gui = false
  end

  config.vm.define "kg_control" do |kg_gate|
    kg_gate.vm.box = "ubuntu/trusty64"
    kg_gate.vm.hostname = "kgcontrol"
    kg_gate.vm.network :private_network, ip: "10.255.10.18"
    kg_gate.vm.provision "shell", path: "preps/ubn_ansprep.sh"
  end

  config.vm.define "kg_gate" do |kg_gate|
    kg_gate.vm.box = "ubuntu/trusty64"
    kg_gate.vm.hostname = "kggate"
    kg_gate.vm.network :private_network, ip: "10.255.10.19"
  end

  config.vm.define "kg_ad" do |kg_ad|
    kg_ad.vm.guest = :windows
    kg_ad.vm.box = "eltuko/win2012r2-chef-pester"
    kg_ad.vm.communicator = "winrm"
    kg_ad.vm.hostname = "kgad"
    kg_ad.vm.network :private_network, ip: "10.255.10.20"
    kg_ad.vm.provision "shell", path: "preps/win_prereqs.ps1"
 end

  config.vm.define "kg_strgutl" do |kg_strgutl|
    kg_strgutl.vm.guest = :windows
    kg_strgutl.vm.box = "eltuko/win2012r2-chef-pester"
    kg_strgutl.vm.communicator = "winrm"
    kg_strgutl.vm.hostname = "kgstrgutl"
    kg_strgutl.vm.network :private_network, ip: "10.255.10.21"
    kg_strgutl.vm.provision "shell", path: "preps/win_prereqs.ps1"
  end

  config.vm.define "kg_ts1" do |kg_ts1|
    kg_ts1.vm.guest = :windows
    kg_ts1.vm.box = "eltuko/win2012r2-chef-pester"
    kg_ts1.vm.communicator = "winrm"
    kg_ts1.vm.network :private_network, ip: "10.255.10.22"
    kg_ts1.vm.provision "shell", path: "preps/win_prereqs.ps1"
  end

  config.vm.define "kg_ts2" do |kg_ts1|
    kg_ts1.vm.guest = :windows
    kg_ts1.vm.box = "eltuko/win2012r2-chef-pester"
    kg_ts1.vm.communicator = "winrm"
    kg_ts1.vm.network :private_network, ip: "10.255.10.23"
    kg_ts1.vm.provision "shell", path: "preps/win_prereqs.ps1"
  end


end
