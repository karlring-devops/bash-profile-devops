#!/bin/bash

setup_bash_profile(){
	mkdir ~/.devops
	cd ~/.devops
	git clone https://github.com/karlring-devops/bash-profile-devops.git
	cp bash-profile-devops/.* ~/
	cd ~
	source .bash_profile
}

setup_bash_profile
