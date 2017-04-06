# Universal variables
set -U EDITOR nvim

# PATHs
set default_path /usr/bin /usr/sbin /bin /sbin
set homebrew /usr/local/bin /usr/local/sbin
# set latex "/usr/texbin"
set brew_rbenv /usr/local/var/rbenv/shims
set yarn ~/.config/yarn/global/node_modules/.bin
# PATH ($default should be last)
set -gx PATH $homebrew $brew_rbenv $yarn $default_path
# No more bundle exec
# set -gx  RUBYGEMS_GEMDEPS -

# Change rbenv root path
set -gx RBENV_ROOT /usr/local/var/rbenv

# Aliases
alias bex="bundle exec"
alias cpwd="pwd | tr -d '\n' | pbcopy"
alias folder_size='du -hd1'
alias hostsconfig="sudo nvim /etc/hosts"
alias vhostsconfig="sudo nvim /etc/apache2/extra/httpd-vhosts.conf"
alias fishconfig="nvim ~/.config/fish/config.fish"
alias fisherconfig="nvim ~/.config/fish/fishfile"
# www.npmjs.com/package/markdown-preview
alias preview_markdown="markdown-preview" 
alias start_mongodb="mongod --config /usr/local/etc/mongod.conf"
alias start_postgres="postgres -D /usr/local/var/postgres"
alias stop_postgres="pg_ctl -D /usr/local/var/postgres stop"
# alias vim="nvim"

# Respecting .gitignore, .hgignore, and svn:ignore (ag will do the filtering)
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'


# Functions
# alias generate_random='env LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c 10'
function generate_random
  if test -e $argv
    echo "Usage generate_random [LENGTH]"
  else
    env LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c $argv
  end
end

# iTerm integration
# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
