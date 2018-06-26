require "#{File.dirname(__FILE__)}/../../../../src/components/core/vagrant/Vagrantfile.core"

Environment.core(hostmanager: { host: true, guest: false })

class UbuntuSampleVM < VM
  @@ubuntu_sample = {
    box: 'gusztavvargadr/u14',
    memory: 1024,
    cpus: 1,
  }

  def self.ubuntu_sample(options = {})
    @@ubuntu_sample = @@ubuntu_sample.deep_merge(options)
  end

  def initialize(environment, options = {})
    super(environment, @@ubuntu_sample.deep_merge(options))
  end

  def vagrant_configure
    super

    HyperVProvider.new(self)
    VirtualBoxProvider.new(self)

    FileProvisioner.new(self,
      'source' => 'C:/Windows/System32/drivers/etc/hosts',
      'destination' => '/tmp/etc/hosts',
      'run' => 'always')
    ShellProvisioner.new(self,
      'inline' => 'mv /tmp/etc/hosts /etc/hosts',
      'run' => 'always')
  end
end

class WindowsSampleVM < VM
  @@windows_sample = {
    box: 'gusztavvargadr/w16s',
    memory: 2048,
    cpus: 1,
  }

  def self.windows_sample(options = {})
    @@windows_sample = @@windows_sample.deep_merge(options)
  end

  def initialize(environment, options = {})
    super(environment, @@windows_sample.deep_merge(options))
  end

  def vagrant_configure
    super

    HyperVProvider.new(self)
    VirtualBoxProvider.new(self)

    FileProvisioner.new(self,
      'source' => 'C:/Windows/System32/drivers/etc/hosts',
      'destination' => 'C:/Windows/System32/drivers/etc/hosts',
      'run' => 'always')
  end
end
