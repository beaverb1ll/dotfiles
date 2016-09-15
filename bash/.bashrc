# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
. ~/.git-prompt.sh
PS1='\u@\h \W\[\e[1;34m\]$(__git_ps1 " (%s)")\[\e[m\] \$ '

alias makej='make -j$(($(nproc)-1)) '
