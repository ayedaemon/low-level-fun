Vagrant.configure("2") do |config|
  config.vm.box = "archlinux/archlinux"
  config.vm.box_check_update = true

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "512"
  end

  config.vm.provision "shell", inline: <<-SHELL
    # Backup the original bootloader
    dd \
      if=/dev/sda \
      of=/vagrant/backedup_bootloader.bin \
      bs=1 \
      count=446
	 
    # Copy the fun bootloader to first 446 bytes of sda
    dd \
      if=/vagrant/custom_bootloader.bin \
      of=/dev/sda \
      bs=1 \
      count=446
	 	
    # Reboot the system to see the effect
    reboot
  SHELL
end
