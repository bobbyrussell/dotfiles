. "$HOME/.bashrc"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="$PATH:/usr/local/smlnj-110.75/bin"
export PATH="$PATH:/usr/local/share/python"
export DJANGO_SETTINGS_MODULE=aatStats.settings.local
export SECRET_KEY='h0ly-sh1t-s0m4dd'

# export PATH="$PATH:/usr/local/Cellar/python/python/2.7.4/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/django"

 #Setting PATH for EPD_free-7.3-2
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
#export PATH

##
# Your previous /Users/bobby/.bash_profile file was backed up as /Users/bobby/.bash_profile.macports-saved_2013-03-28_at_14:31:12
##

# MacPorts Installer addition on 2013-03-28_at_14:31:12: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

