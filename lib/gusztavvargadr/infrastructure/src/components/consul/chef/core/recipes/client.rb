gusztavvargadr_consul_client '' do
  client_options node['gusztavvargadr_consul']['client']
  action :install
end
