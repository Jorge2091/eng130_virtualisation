
Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/xenial64"
   # creating a virtual machine ubuntu 
    config.vm.network "private_network", ip: "192.168.10.100"
   # creating a synced folder
   # 1st param - host folder with root folder being the folder itself
   # 2nd param - vm folder, absolute path required 
    config.vm.synced_folder "./app", "/home/vagrant/app"
    config.vm.synced_folder "./environment", "/home/vagrant/environment"
    config.vm.provision "shell", path: "provision.sh"

end
