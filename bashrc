# Custom Terminal Prompt
# User@HostWorkingdirectory: 
export PS1="\[\033[00;31m\]\u\[\033[00m\]@\h\[\033[01;37m\]\w\[\033[00m\]$ "

# colors!
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# use VIM 'less' instead of less
VLESS=$(find /usr/share/vim -name 'less.sh')
if [ ! -z $VLESS ]; then
    alias less=$VLESS
fi

