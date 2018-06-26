default['gusztavvargadr_sql']['2017_ssms'] = {
  'native_packages' => {
    'SSMS 17.6' => {
      'source' => 'https://download.microsoft.com/download/A/F/5/AF52C08E-AF5C-41F0-8E50-2E4DE2A3A33A/SSMS-Setup-ENU.exe',
      'install' => [
        '/install',
        '/quiet',
        '/norestart',
      ],
      'executable' => 'C:/Program Files (x86)/Microsoft SQL Server/140/Tools/Binn/ManagementStudio/Ssms.exe',
      'elevated' => true,
    },
  },
}
