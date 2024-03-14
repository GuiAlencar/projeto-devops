Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  config.vm.network "public_network"
  
  Vagrant::Config.run do |config|
	  # Redireciona a porta 80 do guest para a porta 4567 do host
	  config.vm.forward_port 8080, 8080
	  config.vm.forward_port 3000, 3000
	  config.vm.forward_port 9090, 9090
  end

  
  config.vm.synced_folder ".", "/vagrant"
  config.vm.provision "shell", inline: "/bin/bash /vagrant/provision.sh", privileged: true
end
