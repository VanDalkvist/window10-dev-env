#!/bin/bash

# TODO: check if already member

docker swarm join --token `cat /vagrant/.vagrant/docker-swarm-join-token-worker` `cat /vagrant/.vagrant/docker-swarm-join-ip`:2377
