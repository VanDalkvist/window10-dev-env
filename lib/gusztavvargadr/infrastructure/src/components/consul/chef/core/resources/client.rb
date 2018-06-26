property :client_options, Hash, required: true

default_action :install

action :install do
  node.override['consul'] = client_options
  include_recipe 'consul::default'
end
