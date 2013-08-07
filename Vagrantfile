Vagrant.configure('2') do |config|
  config.vm.box = 'base'

  config.vm.provision :puppet do |p|
    p.manifests_path = 'puppet/manifests'
    p.module_path = 'puppet/modules'
    p.manifest_file = 'site.pp'
    p.options = '--verbose'
  end

  config.vm.define :ntpserver do |ntps|
    ntps.vm.network :private_network, ip: '172.16.0.20'
    ntps.vm.hostname = 'ntpserver.puppetlabs.vm'
    ntps.vm.provision :hosts
  end

  config.vm.define :ntpclient do |ntpc|
    ntpc.vm.network :private_network, ip: '172.16.0.21'
    ntpc.vm.hostname = 'ntpclient.puppetlabs.vm'
    ntpc.vm.provision :hosts
  end
end  
