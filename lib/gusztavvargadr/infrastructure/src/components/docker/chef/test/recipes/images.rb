gusztavvargadr_docker_engine 'community' do
  engine_mode node['platform']
  action [:prepare, :install, :switch]
end

gusztavvargadr_docker_images '' do
  images_options node['gusztavvargadr_docker_test']['images']
  action :pull
end
