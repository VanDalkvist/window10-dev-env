require "#{File.dirname(__FILE__)}/../vagrant/Vagrantfile.core"

VM.core(memory: 4096, cpus: 2)

Environment.new(name: 'kitchen.local') do |environment|
  VM.new(environment) do |vm|
    HyperVProvider.new(vm) do |provider|
      provider.override.vm.synced_folder '.', '/vagrant', disabled: true
    end

    VirtualBoxProvider.new(vm)
  end
end
