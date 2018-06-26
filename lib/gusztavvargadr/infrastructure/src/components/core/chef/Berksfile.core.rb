def gusztavvargadr_sources
  source 'https://supermarket.chef.io'
end

def gusztavvargadr_infrastructure_sources
  gusztavvargadr_sources
end

def gusztavvargadr_cookbook(type, name, version = '')
  cookbook_name = "gusztavvargadr_#{name}"
  cookbook_name = "#{cookbook_name}_#{version}" unless version.to_s.empty?

  cookbook_path = "#{File.dirname(__FILE__)}/../../../../src/#{type}/#{name}/chef/cookbooks/#{cookbook_name}"

  cookbook cookbook_name, path: cookbook_path
end

def gusztavvargadr_infrastructure_cookbook(type, component, name = '', directory = 'core')
  cookbook_name = "gusztavvargadr_#{component}"
  cookbook_name = "#{cookbook_name}_#{name}" unless name.to_s.empty?

  directory = name unless name.to_s.empty?
  cookbook_path = "#{File.dirname(__FILE__)}/../../../../src/#{type}/#{component}/chef/#{directory}"

  cookbook cookbook_name, path: cookbook_path
end
