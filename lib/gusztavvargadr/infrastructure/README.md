# Infrastructure

<!--
TODOs

vagrant memory hyperv allow from to
vagrant berkshelf eliminate
back to private networks
cookbook naming -> chef/core, chef/tests (no cookbooks and prefix in folder name)
networks set to private
kitchen multi machine setup (use platform / suite name (parent folder?))
chef test to use core resources only - chef spec for core recipe tests
orders (components - vs, docker, iis, sql)
order (providers - hyperv, vbox)
consul acl dynamic bootstrap
nssm cookbook for platform samples

providers / platform as params for e.g. docker 

consul cookbook: open ports
gusztavvargadr.me.local
write / apply env vars for using components (e.g. consul / octopus env vars)
vagrant yml remove duplication
docker tls terraform

samples to follow src
  domain and entity names

test kitchen: no shared folders
env vars for secrets by default prefixed per type
cookbook naming samples tests (plural)

vagrant options smbol vs string
vagrant chef json static vs method
ubuntu base image with chef
yml split configurtion for env, vm, provision, etc

vagrant: org, domain, component, project, tenant, env
multiple domain names per level with overrides to support aliases too

move cookbooks from ws
terraform for local config
consul config cleanup (server and client addresses)
vagrant core : private / public network optins
virtualbox: ip lookup
sql no sa password
packer template generate from terraform
0-based index for vagrant also
dedicated test cookbooks next to actual one
move from packer

vagrant:
(tls)
vault
vb
dotnet

double check src / sample count
move from ws / packer

general
ci flow
ruby, chef lint, warns
environment generalization with providers (vagrant, terraform)
kitchen machine name from env (suite), allow hostmanager -> multi-machine -> mention at kitchen issue

vagrant
env vars to options
env name load from folder (check with kitchen)
machine / provisioner options directly (do not depend on env, other machines)
default options load from yml
data files load with chef

tls
prevent duplication

windows
windows file from cookbook (static and template)
package from iso (mount / umount)
generic shell with logs, output, elevated or not
official windows cookbook usage
all packages review for idempotence

octopus
clean up / unregister
samples with real projects
tentacle for running terraform / packer
env ps for selecting matching profiles - fetch from consul / vault
terraform chef solo
channels with version number
tentacle reconfigure

dotnet
cookbook for frameworks (include core)
ngen
samples

consul
dns, forwarding
separate tokens
mutliple dcs

vault
ha with chef

chef
no abbreviations (e.g. gv_vs to visual studio)
idempotence everywhere
-->

This repository contains infrastructure components for .NET development with Docker, Visual Studio, IIS and SQL Server on Windows.

- Components
  - [Sources](src/components)
  - [Samples](samples/components)
