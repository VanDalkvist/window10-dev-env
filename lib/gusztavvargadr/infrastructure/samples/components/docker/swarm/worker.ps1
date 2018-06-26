# TODO: check if already member

netsh advfirewall set allprofiles state off

$ip = Get-Content /vagrant/.vagrant/docker-swarm-join-ip
$token = Get-Content /vagrant/.vagrant/docker-swarm-join-token-worker

"docker swarm join --token $token $($ip):2377" | Invoke-Expression
