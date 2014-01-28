dokku-vagrant-example
=====================

How to run dokku on Vagrant

These are just my notes on how to run dokku on Vagrant.

Installing
----------

First, install Vagrant. Then, add entries to the Host Database in /etc/hosts, such as:

	10.0.0.2	dokku.me
	10.0.0.2	dokku-vagrant-example.dokku.me

Go!

	git clone https://github.com/RyanBalfanz/dokku-vagrant-example.git
	cd dokku-vagrant-example
	./bootstrap.sh
	# bootstrap.sh doesn't yet clone this repo
	# wget -qO- https://raw.github.com/RyanBalfanz/dokku-vagrant-example/raw/master/bootstrap.sh | bash

Now what? Try these:

	make deploy
	make test # Check if the application is running correctly
	make logs # Show the last logs of the application
