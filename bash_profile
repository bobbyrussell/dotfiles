. "$HOME/.bashrc"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$PATH:/usr/local/smlnj-110.75/bin"
export PATH="$PATH:/usr/local/share/python"
export DJANGO_SETTINGS_MODULE=aatStats.settings.local
export SECRET_KEY='h0ly-sh1t-s0m4dd'

source ~/.profile
