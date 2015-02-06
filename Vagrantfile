# avoids having to $ vagrant up --provider docker
ENV['VAGRANT_DEFAULT_PROVIDER'] ||= 'docker'

Vagrant.configure("2") do |config|

  config.vm.provider "docker" do |d|
    d.build_dir = '.'
    d.has_ssh = true
  end

  config.vm.synced_folder 'shared/', '/shared'
  config.vm.provision :shell, :path => 'bootstrap.sh'
    
end
