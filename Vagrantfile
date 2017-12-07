VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "ubuntu/trusty32"

	config.vm.provision :shell, path: "provision/bootstrap.sh"
	config.vm.provision :shell, path: "provision/enable-erica-site.sh"

	# to prevent conflict with other vagrant boxes use 8181
	config.vm.network :forwarded_port, guest: 80, host: 8181

	#mysql Use port 3316 when connecting
    config.vm.network "forwarded_port", guest: 80, host: 8585
    config.vm.network "forwarded_port", guest: 3306, host: 3066

    # Create a private network, which allows host-only access to the machine
    # using a specific IP.
    config.vm.network "private_network", ip: "192.168.23.23"

	config.vm.provider :virtualbox do |v|
		v.memory = 4096
		v.cpus = 4
	end

	#Allows terminal keys to be used
	#useful for git
	config.ssh.forward_agent = true;

	#This will share all the siblings folders to be shared
	#config.vm.synced_folder "live-site/", "/var/www/Yay-its-Erica-Website/"
	config.vm.synced_folder "live-site/", '/usr/share/nginx/html'

	#this will share any custom scripts with vagrant build
	config.vm.synced_folder "scripts", "/home/vagrant/scripts"
end
