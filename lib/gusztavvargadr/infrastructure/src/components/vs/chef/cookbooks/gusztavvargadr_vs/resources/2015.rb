property :edition, String, name_property: true

action :install do
  directory_path = "#{Chef::Config[:file_cache_path]}/gusztavvargadr_vs/2015_#{edition}"

  directory directory_path do
    recursive true
    action :create
  end

  configuration_file_name = 'configuration.xml'
  configuration_file_path = "#{directory_path}/#{configuration_file_name}"
  configuration_file_source = "2015_#{edition}.xml"
  cookbook_file configuration_file_path do
    source configuration_file_source
    cookbook 'gusztavvargadr_vs'
    action :create
  end

  installer_file_name = 'installer.exe'
  installer_file_path = "#{directory_path}/#{installer_file_name}"
  installer_file_source = node['gusztavvargadr_vs']["2015_#{edition}"]['installer_file_url']
  remote_file installer_file_path do
    source installer_file_source
    action :create
  end

  gusztavvargadr_windows_powershell_script_elevated "Install Visual Studio 2015 #{edition}" do
    code <<-EOH
      Start-Process "#{installer_file_path.tr('/', '\\')}" "/adminfile #{configuration_file_path.tr('/', '\\')} /quiet /norestart" -Wait
    EOH
    action :run
  end
end
