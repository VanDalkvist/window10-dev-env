$serverName = "linux.standalone.docker.local"
# $serverName = "windows.standalone.docker.local"
# $serverName = "manager-linux-1.swarm.docker.local"
# $serverName = "manager-windows-1.swarm.docker.local"
$ips = "127.0.0.1,192.168.0.1"

# mkdir ca -Force
# mkdir server -Force
# mkdir client -Force

docker run --rm `
  -e SERVER_NAME=$serverName `
  -e IP_ADDRESSES=$ips `
  -v "$(pwd)\ca:c:\DockerSSLCARoot" `
  -v "$(pwd)\server:c:\programdata\docker" `
  -v "$(pwd)\client:c:\users\containeradministrator\.docker" `
  stefanscherer/dockertls-windows

# /etc/default/docker

DOCKER_OPTS='
-H tcp://0.0.0.0:2376
-H unix:///var/run/docker.sock
--storage-driver aufs
--tlsverify
--tlscacert /etc/docker/ca.pem
--tlscert /etc/docker/server.pem
--tlskey /etc/docker/server-key.pem
'

# /ProgramData/docker/conf/daemon.json

# {
#   "tlsverify":  true,
#   "tlskey":  "C:\\ProgramData\\docker\\certs.d\\server-key.pem",
#   "tlscacert":  "C:\\ProgramData\\docker\\certs.d\\ca.pem",
#   "tlscert":  "C:\\ProgramData\\docker\\certs.d\\server.pem",
#   "hosts":  [
#                 "tcp://0.0.0.0:2376",
#                 "npipe://"
#             ]
# }
