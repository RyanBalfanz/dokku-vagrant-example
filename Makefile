deploy:
	@git push dokku master

logs:
	@vagrant ssh -- sudo dokku logs dokku-vagrant-example

test:
	@curl -sL http://dokku-vagrant-example.dokku.me\?echo+"It+works\!" | bash
