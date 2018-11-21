source ~/Scripts/git-prompt.sh
source ~/Scripts/git-completion.bash

#Ruby \\ rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#Prompt
#export PS1="\[\033[38;5;7m\]\u\[$(tput sgr0)\]\[\033[38;5;8m\]@\[$(tput sgr0)\]\[\033[38;5;7m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\][\[$(tput sgr0)\]\[\033[38;5;160m\]\T\[$(tput sgr0)\]\[\033[38;5;15m\]]\w\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;8m\]:\[$(tput sgr0)\][(__git_ps1 " (%s)")]\$ "
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# Alias
alias weather='curl wttr.in/Adelaide'
alias ipext="curl -s http://checkip.dyndns.org/ | grep -o '[0-9][0-9]*.[0-9][0-9]*.[0-9][0-9]*.[0-9]*'"
alias cp="cp -i"        # confirm before overwriting something
alias df="df -h"        # human-readable sizes
alias gg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias alert='terminal-notifier -title "Terminal" -message "Done!"'
alias gc="git checkout"
alias be="bundle exec"

#Bundler
export BUNDLER_EDITOR="sublime"
