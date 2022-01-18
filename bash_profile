export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagaced
export PATH="/usr/local/mysql/bin:$PATH"

# Dossier d'autocompletion (fichiers git + docker ajoutés manuellement)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Alias perso
alias ll='ls -lAH'
alias la='ls -A'
alias l='ls -CF'
alias vi='vim'
alias xcode='cd /Users/Florian/Documents/Xcode'
alias langagec='cd /Users/Florian/Documents/Xcode/LangageC'
alias less='/usr/share/vim/vim73/macros/less.sh'
alias startdocker='bash --login "/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh"'

# Git branches dans le prompt et changement de couleur
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\e[0;36m\]\u@\h:\[\e[0m\e[0;32m\]\W\[\e[1;33m\]\$(parse_git_branch)\[\e[0;37m\]\$(__docker_machine_ps1) \$\[\e[0m\] "

#v4 - Troisieme version avant ajout Docker machine
#export PS1="\[\e[0;36m\]\u@\h:\[\e[0m\e[0;32m\]\W\[\e[1;33m\]\$(parse_git_branch)\[\e[0;37m\] \$\[\e[0m\] "

#v3 - Deuxieme version avec heure devant
#export PS1="\[\e[0;36m\][\A] \u@\h:\[\e[0m\e[0;32m\]\W\[\e[1;33m\]\$(parse_git_branch)\[\e[0;37m\] \$\[\e[0m\] "

#v2 - Premiere version avec couleurs
#export PS1="\[\033[31m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33m\]\w\[\033[35m\]\$(parse_git_branch)\[\033[00m\] $ "

#v1 - Ancien changement de couleur du prompt
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
