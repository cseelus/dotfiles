# Universal variables
set -U EDITOR nvim

# PATHs
set default_path /usr/bin /usr/sbin /bin /sbin
set homebrew /usr/local/bin /usr/local/sbin
# set latex "/usr/texbin"
set odbcsys "/etc"
set odbc "/usr/local/etc"
set brew_rbenv "/usr/local/var/rbenv/shims"
# PATH ($default should be last)
set -gx PATH $homebrew $latex $odbcsys $odbc $brew_rbenv $default_path
# No more bundle exec
# set -gx  RUBYGEMS_GEMDEPS -

# Ruby (rbenv)
set -gx RBENV_ROOT /usr/local/var/rbenv

# Aliases
alias bex="bundle exec"
alias cpwd="pwd | tr -d '\n' | pbcopy"
alias folder_size='du -sh */'
alias hostsconfig="sudo nvim /etc/hosts"
alias vhostsconfig="sudo nvim /etc/apache2/extra/httpd-vhosts.conf"
alias fishconfig="nvim ~/.config/fish/config.fish"
alias fisherconfig="nvim ~/.config/fish/fishfile"
# www.npmjs.com/package/markdown-preview
alias preview_markdown="markdown-preview" 
alias start_mongodb="mongod --config /usr/local/etc/mongod.conf"
alias start_postgres="postgres -D /usr/local/var/postgres"
alias stop_postgres="pg_ctl -D /usr/local/var/postgres stop"
alias vim="nvim"


# Functions
# alias generate_random='env LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c 10'
function generate_random
  if test -e $argv
    echo "Usage generate_random [LENGTH]"
  else
    env LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c $argv
  end
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
