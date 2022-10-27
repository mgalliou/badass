server = "badass"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  config.vm.define server do |server|
    server.vm.provider "virtualbox" do |vb|
      vb.name = "cloud1vm"
    end
    server.vm.network "private_network", ip: "192.168.56.20" 
  end
end
