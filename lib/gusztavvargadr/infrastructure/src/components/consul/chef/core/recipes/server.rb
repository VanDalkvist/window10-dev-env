gusztavvargadr_consul_server '' do
  server_options node['gusztavvargadr_consul']['server']
  action :install
end
