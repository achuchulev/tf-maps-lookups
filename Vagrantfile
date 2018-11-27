Vagrant.configure(2) do |config|
  config.vm.box = "xenial"
  config.vm.box_url = "https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-vagrant.box"
  config.vm.network "forwarded_port", guest: 80, host: 8088
  config.vm.provision "shell", path: "scripts/provision.sh" , privileged: false
  config.vm.synced_folder ".", "/vagrant", disabled: false
end
