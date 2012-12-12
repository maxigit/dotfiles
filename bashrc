function set_proxy() {
	export HTTP_PROXY=http://wwwcache.sanger.ac.uk:3128 
	export http_proxy=$HTTP_PROXY
	export https_proxy=$HTTP_PROXY
}

function unset_proxy() {
	unset HTTP_PROXY
	unset http_proxy
	unset https_proxy
}
#PATH
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:./script
export PATH=$PATH:/Library/apache-activemq-5.2.0/bin
export PATH=$PATH:/Library/instantclient
export PATH=$PATH:/Library/PostgreSQL/9.1/bin
export PATH=~/.bin:$PATH
export DYLD_LIBRARY_PATH=/Library/instantclient
export TNS_ADMIN=/Library/instantclient/Config


#Maven
export M2_HOME=/usr/local/apache-maven/apache-maven-2.2.1
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

#Sequencescape
export SEQUENCESCAPE_SKIP_LONG_TEST=1
alias tkdiff="/Applications/TkDiff.app/Contents/MacOS/Wish\ Shell"

#SHELL configuration
set -o vi
export CLICOLOR=1

export EDITOR=/usr/local/bin/vi

#Dir navigation
function pd {
	pushd -n $(pwd)
}
alias cdl="dirs -v"
function sd {
cd $(dirs -l +$1)
}

alias cds=sd
#RAILS shorcut
alias spipelines=~/devel/pipelines/script/$1
alias sprojects=~/devel/projects/script/$1
alias mae="cd /Users/mb14/private/mae"

#GIT completion
. ~/.dotfiles/git-completion.bash
#RAKE completion
. ~/.dotfiles/rake-complete.bash
#CAP completion
. ~/.dotfiles/cap-complete.bash

#task completion
. ~/.dotfiles/task_completion.sh

#tig completion
. ~/.dotfiles/tig-completion.bash

#tmux completoin
. ~/.dotfiles/tmux_completion.bash


# All completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
#BASH should be in bashrc
export PS1='\[\e[34m\]\u\[\e[0m\]@\[\e[34m\]\h \[\e[35m\]\w\[\e[0m\]$ '

function set_prompt_git {
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export PS1='\n\[\e[42m\e[30m\]\u\[\e[30m\] \[\e[31m\]${BUNDLE_INFO}\[\e[30m\] $(__git_ps1 "(\[\e[97m\]%s\[\e[30m\]) ")\[\e[31m\]\w\[\e[30m\] ============================= [\[\e[97m\]\t\[\e[30m\]]\[\e[0m\]\[\e[109m\]\n(\!) $  '
}
function set_promt_dark {
export PS1='\[\e[33\]\u\[\e[0m\]@\[\e[33m\]\h \[\e[35m\]\w\[\e[0m\]$ '
}

set_prompt_git

alias ctags=/usr/local/bin/ctags


alias lr="ls -ultra"
alias lw="ls -tralc"
alias ll="ls -al"

alias tmux2="TERM=xterm-256color tmux -2"
alias ntmux="unset TMUX; tmux -f ~/.ntmux.conf"

#alias sqlplus="ssh badger@seq1j sqlplus"

function findg {
find . -name $1 -exec grep -n "$2" {} /dev/null \;
}

##
# Your previous /Users/mb14/.profile file was backed up as /Users/mb14/.profile.macports-saved_2009-10-28_at_14:03:49
##

# MacPorts Installer addition on 2009-10-28_at_14:03:49: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Installer addition on 2009-10-28_at_14:03:49: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.

#Image Magick
export MAGICK_HOME="/Library/ImageMagick-6.5.9"
export PATH="$MAGICK_HOME/bin:$PATH"

#Cabal
export PATH=~/.cabal/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

# Not sure what it's used for
#. ~/.etc/bash_completion

export CDPATH=.:~/:~/devel:~/sequencescape:~/.vim:~
alias cdp="export CDPATH=$CDPATH:~/Dropbox:~/private:/Volumes/mae:~/private/mae"
#alias cdp="CDPATH=~/Dropbox:~/private:/Volumes/mae cd"

growl() { echo -e $'\e]9;'${1}'\007' ; return  ; }
cutags () {   grep -r --include=*.feature '^[ \t]*@' features/ | sed 's/^[^:]*://' | tr '@' '\n' | tr -d ' \t' | sort -u | grep $1 ;}


alias ts="tig status"
alias g="git"
alias t="task"
alias tl="task list"
alias tstart="tw +S start"
alias tstop="tw +S stop"
alias tsinfo="tw +S info | tail -2 | head -1"
alias ta="task add pri:L"
alias tn="tasknote"
alias tx="task next"
alias tw="t +w"
alias th="t -w "
alias tm="t '+mae or +gl'"
#alias tw="task rc.data.location:~/.task "
#alias th="task rc.data.location:~/Dropbox/org/.task"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


alias bush='BUNDLE_INFO=$(date +"<%H:%M>") bundle exec bash'
alias bx='bundle exec'
