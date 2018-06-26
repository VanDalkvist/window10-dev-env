property :server_options, Hash, required: true

default_action :install

action :install do
  node.override['consul'] = new_resource.server_options
  include_recipe 'consul::default'
end
