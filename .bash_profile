#!/bin/bash




gitSetupKubeConfig(){
	KUBE_HOME=/home/$USER/.kube
	[ ! -f ${KUBE_HOME} ] && mkdir -p ${KUBE_HOME}
	cp -if /etc/kubernetes/admin.conf /home/$USER/.kube/config
	chown $USER:$USER /home/$USER/.kube/config
}


gitSetupKProfile(){ 
    cd
    [ -f ~/.kprofile/.kprofile ] && rm -rf ~/.kprofile
    git clone https://github.com/karlring-devops/.kprofile.git
    source ~/.kprofile/.kprofile
}


gitSetupJProfile(){ 
    cd
    [ -f ~/.jprofile/.jprofile ] && rm -rf ~/.jprofile
    git clone https://github.com/karlring-devops/.jprofile.git
    source ~/.jprofile/.jprofile
    }

[ ! -f /home/$USER/.kube   ] && gitSetupKubeConfig
[ -f ~/.jprofile/.jprofile ] && source ~/.jprofile/.jprofile || gitSetupJProfile
[ -f ~/.kprofile/.kprofile ] && source ~/.kprofile/.kprofile || gitSetupKProfile
