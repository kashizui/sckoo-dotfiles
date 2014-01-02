# To allow python to find MySQLdb
# export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# customizing the thingy to be
# User@HostWorkingdirectory: 
export PS1="\[\033[00;31m\]\u\[\033[00m\]@\h\[\033[01;37m\]\w\[\033[00m\]$ "

# for OpenCV use in python and the biotic package
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:/Library/Python/2.7/site-packages:/Users/sckoo/Dropbox/Remote\ Biology/PyBiotic/:${PYTHONPATH}

# matlab shortcut
alias matlab='/Applications/MATLAB_R2011a_Student.app/bin/matlab'

# colors!
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# random conveniences
alias cdbiotic='cd ~/Dropbox/Remote\ Biology/PyBiotic/'
alias profile='mvim ~/.bash_profile'
export PATH=".:${PATH}"

# for exuberant ctags
export PATH="/usr/local/bin:$PATH"

# use VIM 'less' instead of less
VLESS=$(find /usr/share/vim -name 'less.sh')
if [ ! -z $VLESS ]; then
    alias less=$VLESS
fi


# dostack
alias dostack='~/Developer/python/dostack/console.py'

##
# Your previous /Users/sckoo/.bash_profile file was backed up as /Users/sckoo/.bash_profile.macports-saved_2013-01-10_at_01:14:32
##

# MacPorts Installer addition on 2013-01-10_at_01:14:32: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# My own scripts folder
export PATH="/Users/sckoo/Scripts:$PATH"

