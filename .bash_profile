#!/bin/bash



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

[ -f ~/.jprofile/.jprofile ] && source ~/.jprofile/.jprofile || gitSetupJProfile
[ -f ~/.kprofile/.kprofile ] && source ~/.kprofile/.kprofile || gitSetupKProfile
