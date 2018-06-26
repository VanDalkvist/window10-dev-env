# window10-dev-env
Building Win10 .NET development environment with [Packer](https://www.packer.io/) and [Vagrant](https://www.vagrantup.com/).

Based on [rgl/docker-windows-2016-vagrant](https://github.com/rgl/docker-windows-2016-vagrant) and [gusztavvargadr/packer](https://github.com/gusztavvargadr/packer) repositories.

## Intro
Packer instructions have configuration for virtualbox provider only.
A Vagrant box built by packer contains Visual Studio 2017 Community, SQL Server 17 Developer.
Vagrant provision phase contains basic windows desktop configuration, installing required tools like JetBrains IDEs, browsers, git, hyper, etc...

## Steps to build:

### 0. Installation

Install [Packer][PackerInstallation], [Vagrant][VagrantInstallation] and [VirtualBox][VirtualBoxInstallation] from the official sites or from the chocolatey.

```cmd
choco install vagrant
choco install packer
choco install virtualbox
```
Install the [Chef Development Kit][ChefDKInstallation].

You can read about packer here - [Packer - Getting Started][PackerGettingStarted]

[PackerGettingStarted]: https://www.packer.io/intro/getting-started/install.html
[PackerInstallation]: https://www.packer.io/docs/install/index.html
[VagrantInstallation]: https://www.vagrantup.com/docs/installation/
[ChefDKInstallation]: https://downloads.chef.io/chefdk/
[VirtualBoxInstallation]: https://www.virtualbox.org/wiki/Downloads/

### 1. Building a box

```cmd
cd win10\virtualbox\dev
packer build 
```
The step is about building a vagrant box from windows10 image. Windows10 image is loaded from url marked as `iso_url` in `template.json`
And now you have couple hours to drink coffee depends on your machine and network speed.

NOTE: you can provide local path to a win10 ISO.

After finishing this step you will have a Vagrant box and ovf file is needed for Vagrant setting up and provisioning.

### 2. Up vagrant machine

NOTE: [Changing default paths for your boxes and virtual machines](https://medium.com/@cedricdue/moving-vagrant-boxes-and-related-virtualbox-vms-to-another-drive-f1d7c50d20bc)

You can change `box_url` in your `Vagrantfile` to your path to the box created by Packer.
Or you can add your box to the local env like:

```
cd win10\virtualbox\dev\output
vagrant box add {your-box-name}.box --name {your-box-name}
```
and then change the name of created box `config.vm.box` in `Vagrantfile` of this repository to the specified name of the box. Remove `config.vm.box_url` in this case.

And then:

```cmd
cd vagrant
vagrant up
```

The command will setting up a virtual machine for you and run it. First setup will provision all scripts from `provision` section of `Vagrantfile`.

### 3. Working with a VM

```cmd
cd vagrant
vagrant rdp
```

## License
License: [MIT](LICENSE)
