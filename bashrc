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
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:./script
export PATH=$PATH:/Library/apache-activemq-5.2.0/bin
export PATH=$PATH:/Library/instantclient
export PATH=$PATH:/Library/PostgreSQL/9.1/bin
export PATH=~/.bin:$PATH
export DYLD_LIBRARY_PATH=/Library/instantclient
export TNS_ADMIN=/Library/instantclient/Config



#Sequencescape
export SEQUENCESCAPE_SKIP_LONG_TEST=1
alias tkdiff="/Applications/TkDiff.app/Contents/MacOS/Wish\ Shell"


export EDITOR=/usr/local/bin/vi

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

alias ctags=/usr/local/bin/ctags


alias lr="ls -ultra"
alias lw="ls -tralc"
alias ll="ls -al"

alias tmux2="TERM=xterm-256color tmux -2"
alias ntmux="unset TMUX; tmux -f ~/.ntmux.conf"


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



alias ts="tig status"
alias g="git"
alias t=task
alias tl="task list"
alias tstart="tw +S start"
alias tstop="tw +S stop"
alias tsinfo="tw +S info | tail -2 | head -1"
alias tn="tasknote"
alias tx="task next"
alias tw="t +w"
alias th="t -w "
alias tm="t '+mae or +gl'"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


alias bush='BUNDLE_INFO=$(date +"<%H:%M>") bundle exec bash'
alias buzh='BUNDLE_INFO=$(date +"<%H:%M>") bundle exec zsh'
alias bx='bundle exec'
alias r=rspec
