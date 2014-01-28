deploy:
	@git push dokku master

logs:
	@ssh -i ~/.vagrant.d/insecure_private_key vagrant@dokku.me sudo dokku logs dokku-vagrant-example

test:
	@curl -sL http://dokku-vagrant-example.dokku.me\?echo+"It+works\!" | bash
