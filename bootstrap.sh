#!/usr/bin/env bash

vagrant up
vagrant ssh -- "wget -qO- https://raw.githubusercontent.com/progrium/dokku/v0.4.12/bootstrap.sh | sudo DOKKU_TAG=v0.4.12 bash"

cat ~/.ssh/id_rsa.pub | vagrant ssh -- sudo sshcommand acl-add dokku ${USER}

git remote add dokku dokku@dokku.me:dokku-vagrant-example

make deploy
make test
make logs
