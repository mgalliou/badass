server = "badass"

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  config.vm.define server do |server|
    server.vm.provider "virtualbox" do |vb|
      vb.name = "cloud1vm"
    end
    server.vm.network "private_network", ip: "192.168.56.20"
    server.vm.provision "shell" do |s|
      s.inline = <<-SHELL
      sudo apt-get update -y
      sudo apt-get upgrade -y
      sudo apt-get install docker.io -y
      sudo add-apt-repository ppa:gns3/ppa -y
      sudo apt update -y
      sudo apt install gns3-gui gns3-server -y
      SHELL
    end
  end
end
