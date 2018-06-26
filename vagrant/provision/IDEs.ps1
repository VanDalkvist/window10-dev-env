# Install JetBrains env and IDEs
Write-Host 'Installing JetBrains env and IDEs...'

choco install -y webstorm --force
choco install -y jetbrainstoolbox --force
choco install -y resharper-ultimate-all --force
choco install -y jetbrains-rider --force

# install Visual Studio Code
Write-Host 'Installing Visual Studio Code...'
choco install -y vscode --force
choco install -y linqpad --force