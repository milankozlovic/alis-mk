#!/bin/bash
#set -e
##################################################################################################################
# Author 	: Erik Dubois
# Website   : https://www.erikdubois.be
# Website   : https://www.alci.online
# Website	: https://www.arcolinux.info
# Website	: https://www.arcolinux.com
# Website	: https://www.arcolinuxd.com
# Website	: https://www.arcolinuxb.com
# Website	: https://www.arcolinuxiso.com
# Website	: https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black 
#tput setaf 1 = red 
#tput setaf 2 = green
#tput setaf 3 = yellow 
#tput setaf 4 = dark blue 
#tput setaf 5 = purple
#tput setaf 6 = cyan 
#tput setaf 7 = gray 
#tput setaf 8 = light blue
##################################################################################################################

##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# Problem solving commands

# Read before using it.
# https://www.atlassian.com/git/tutorials/undoing-changes/git-reset
# git reset --hard orgin/master
# ONLY if you are very sure and no coworkers are on your github.

# Command that have helped in the past
# Force git to overwrite local files on pull - no merge
# git fetch all
# git push --set-upstream origin master
# git reset --hard orgin/master


#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config
#https://medium.com/clarusway/how-to-use-git-github-without-asking-for-authentication-always-passwordless-usage-of-private-git-8c32489bc2e9
#https://blog.nillsf.com/index.php/2021/05/27/github-sso-using-password-protected-ssh-keys

project=$(basename `pwd`)
echo "-----------------------------------------------------------------------------"
echo "this is project https://github.com/milankozlovic/"$project
echo "-----------------------------------------------------------------------------"
git config --global pull.rebase false
git config --global user.name "milankozlovic"
git config --global user.email "milan.kozlovic@gmail.com"
sudo git config --system core.editor nano
#git config --global credential.helper cache
#git config --global credential.helper 'cache --timeout=32000'
git config --global push.default simple

git remote set-url origin https://github.com/milankozlovic/$project

echo "Everything set"

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
