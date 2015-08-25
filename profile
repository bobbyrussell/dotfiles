PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export SVN_EDITOR=vim
export EDITOR=vim

/usr/bin/keychain $HOME/.ssh/id_rsa
source $HOME/.keychain/$HOSTNAME-sh
