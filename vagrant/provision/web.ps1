Write-Host 'Installing Web env...'

choco install -y postman --force

# install Google Chrome.
# see https://www.chromium.org/administrators/configuring-other-preferences
choco install -y googlechrome --force
$chromeLocation = 'C:\Program Files (x86)\Google\Chrome\Application'
cp -Force .\\config\GoogleChrome-external_extensions.json (Get-Item "$chromeLocation\*\default_apps\external_extensions.json").FullName
cp -Force .\\config\GoogleChrome-master_preferences.json "$chromeLocation\master_preferences"

choco install -y opera --force
choco install -y firefox --force