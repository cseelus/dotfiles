# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme (good ones are clearance, idan, lanai, numist)
set fish_theme clearance

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# set fish_plugins autojump bundler git rails vi-mode
set fish_plugins autojump bundler git rails rake

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Universal variables
set -U EDITOR vim

# PATHs
set default_path /usr/bin /usr/sbin /bin /sbin
set homebrew /usr/local/bin /usr/local/sbin
set latex "/usr/texbin"
set odbcsys "/etc"
set odbc "/usr/local/etc"
# PATH ($default should be last)
set -gx PATH $homebrew $latex $odbcsys $odbc $default_path
# No more bundle exec
# set -gx  RUBYGEMS_GEMDEPS -

# Aliases
alias bex="bundle exec"
alias cpwd="pwd | tr -d '\n' | pbcopy"
alias folder_size='du -sh */'
alias hostsconfig="sudo vim /etc/hosts"
alias vhostsconfig="sudo vim /etc/apache2/extra/httpd-vhosts.conf"
alias fishconfig="vim ~/.config/fish/config.fish"
alias vi="mvim --remote-tab-silent"
alias vib="mvim --remote-silent"
alias start_mongodb="mongod --config /usr/local/etc/mongod.conf"
alias start_postgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stop_postgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"
alias start_virtuoso="cd /usr/local/Cellar/virtuoso/7.0.0/var/lib/virtuoso/db & virtuoso-t -f"


# Functions
# alias generate_random='env LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c 10'
function generate_random
  if test -e $argv
    echo "Usage generate_random [LENGTH]"
  else
    env LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c $argv
  end
end
