# MISC SETTINGS
source ~/.bashrc
source ~/.mycreds

PATH=$PATH:/usr/local
_TIME=$(date +%s)
ROOT_DIR=/Users/paulwalker

#GIT
git config --global diff.tool vimdiff
git config --global difftool.prompt false
git config --global alias.d difftool
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

#NVM
NODE_VERSION=8
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
nvm use $NODE_VERSION

#EXPORTS
export PS1='$(hostname):$(pwd)# '
export MYSQLBIN='/usr/local/bin/'
export EDITOR="vim"
export VDPAU_DRIVER=va_gl

# ANDROID / JAVA
export ANDROID_HOME=~/Android/Sdk/
alias andrst=~/android-studio/bin/studio.sh

#DRUSH
export PATH="$HOME/drush:$PATH"

# ALIASES
alias ls="ls -a"
alias lss="ls -al | grep grw"
alias mysqlstart="/usr/local/Cellar/mysql/5.6.19/support-files/mysql.server start"
alias rmswp='find ./ -type f -name "\.*sw[fghijklmnop]" -delete'
alias aliases="compgen -a"
alias rmlasthost="sed -i '' -e '$ d' /Users/paul/.ssh/known_hosts"
alias chrome_no_sec='open -a Google\ Chrome --args --disable-web-security'
alias tor="/home/pj/Apps/tor-browser_en-US/start-tor-browser.desktop"
alias soulseek="screen ~/Apps/SoulseekQt-2016-1-17-64bit"
alias g++="g++-8"
alias pjw="ssh root@pjwalker.net"
alias mongoup="sudo mongod --fork --logpath ~/log/mongodb.log"

#VIRTUAL BOX
alias vbm="VBoxManage"
alias vbmd="VBoxManage controlvm <name|uuid> poweroff"

# make bash autocomplete with up arrow/down arrow
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# VAGRANT
VAGRANT_SHARE_PATH=''
alias vgg="vagrant global-status"
alias vg="cd /Users/paul/VMs/t1" # vargant deb machines
alias sshv="ssh -i $VAGRANTKEY $@" # add vagrant ssh key to ssh command 
alias rsyncv="rsync -e 'sshv' $@" # user vagrant key with rsync
