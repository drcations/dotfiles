# .bashrc
#---------
#---------

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

###############################################################
###############################################################
##                                                           ##
## ######################################################### ##
## ######################################################### ##
## ####################                    ################# ##
## #################### My Custom Settings ################# ##
## ####################                    ################# ##
## ######################################################### ##
## ######################################################### ##
##                                                           ##
############################################################### 
###############################################################

# Bash Prompt.
# ------------
export PS1="\[\033[38;5;7m\]\u\[$(tput sgr0)\]\[\033[38;5;8m\]@\[$(tput sgr0)\]\[\033[38;5;7m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\][\[$(tput sgr0)\]\[\033[38;5;160m\]\T\[$(tput sgr0)\]\[\033[38;5;15m\]]\w\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;8m\]:\[$(tput sgr0)\]"

# Powerline.
# ----------
#if [ -f `which powerline-daemon` ]; then
#  powerline-daemon -q
#  POWERLINE_BASH_CONTINUATION=1
#  POWERLINE_BASH_SELECT=1
#  . /usr/share/powerline/bash/powerline.sh
#fi
#
#
#export PS1="_\t_\h_\w_>\[$(tput sgr0)\]"

# Alias'.
# -------
alias runjdk='JAVA_HOME=~/opt/jdk8 /home/dave.cations/opt/jboss/bin/jmc.sh'
alias runjconsole='JAVA_HOME=/home/dave.cations/opt/jdk8 /home/dave.cations/opt/jboss/bin/jconsole.sh'
alias weather='curl wttr.in/Adelaide'
alias l='ll -trh'
alias ltc='coinmon -c aud -f ltc'
alias ipext="curl -s http://checkip.dyndns.org/ | grep -o '[0-9][0-9]*.[0-9][0-9]*.[0-9][0-9]*.[0-9]*'"
alias cp="cp -i"        # confirm before overwriting something
alias df="df -h"        # human-readable sizes
alias free="free -m"    # show sizes in MB
alias sysinfo="inxi -Fzxc0"
alias gg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias xlm='coinmon -c aud -f xlm'
alias update='sudo yum update -y'

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Go.
# ---
#export GOPATH=$HOME/go

# 'The Fuck' Command Completion.
# ------------------------------
#eval $(thefuck --alias)


# Ex - archive extractor
# usage: ex <file>
# -----------------------

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

#######################################
