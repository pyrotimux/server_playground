# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.define "ps_guac" do |ps_guac|
    ps_guac.vm.box = "ubuntu/trusty64"
    ps_guac.vm.hostname = "psguac"
    ps_guac.vm.network :private_network, ip: "10.255.10.19"
  end

  config.vm.define "ps_main" do |ps_main|
    ps_main.vm.guest = :windows
    ps_main.vm.box = "eltuko/win2012r2-chef-pester"
    ps_main.vm.communicator = "winrm"
    ps_main.vm.network :private_network, ip: "10.255.10.20"
    ps_main.vm.network :forwarded_port, guest: 5985, host: 5985, id: "winrm", auto_correct: true
    ps_main.vm.network :forwarded_port, guest: 3389, host: 3389, id:"rdp", auto_correct: true
    ps_main.vm.provision "shell", path: "preps/win_prereqs.ps1"
 end

  config.vm.define "ps_ad" do |ps_ad|
    ps_ad.vm.guest = :windows
    ps_ad.vm.box = "eltuko/win2012r2-chef-pester"
    ps_ad.vm.communicator = "winrm"
    ps_ad.vm.network :private_network, ip: "10.255.10.21"
    ps_ad.vm.network :forwarded_port, guest: 5985, host: 5985, id: "winrm", auto_correct: true
    ps_ad.vm.network :forwarded_port, guest: 3389, host: 3389, id:"rdp", auto_correct: true
    ps_ad.vm.provision "shell", path: "preps/win_prereqs.ps1"
  end


end