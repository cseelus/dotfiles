# Universal variables
set -U EDITOR nvim
# Enable Fish VI mode
# fish_vi_key_bindings

# PATHs
set default_path /usr/bin /usr/sbin /bin /sbin ls /usr/local/bin
set homebrew /opt/homebrew/bin /opt/homebrew/sbin /opt/homebrew/share/fish/
# set latex "/usr/texbin"
set brew_rbenv /opt/rbenv/shims
set lua_cargo /Users/$(whoami)/.cargo/bin
set yarn ~/.config/yarn/global/node_modules/.bin ~/.yarn/bin
# set genymotion_tools /Applications/Genymotion.app/Contents/MacOS/tools
# set android_tools /Users/chris/Library/Android/sdk/platform-tools
# set java_home "/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin"
# PATH ($default should be last)
set -gx PATH $homebrew $brew_rbenv $lua_cargo $yarn $default_path
# No more bundle exec
# set -gx  RUBYGEMS_GEMDEPS -

# Change rbenv root path
set -gx RBENV_ROOT /opt/rbenv

# Aliases
abbr bex "bundle exec"
# alias nvim="/Applications/nvim-osx64/bin/nvim"
alias cpwd="pwd | tr -d '\n' | pbcopy"
alias ccat="cat"
alias folder_size='du -hd1'
alias hostsconfig="sudo nvim /etc/hosts"
alias vhostsconfig="sudo nvim /etc/apache2/extra/httpd-vhosts.conf"
alias fishconfig="nvim ~/.config/fish/config.fish"
alias fisherconfig="nvim ~/.config/fish/fishfile"
# www.npmjs.com/package/markdown-preview
alias preview_markdown="markdown-preview" 
alias start_mongodb="mongod --config /usr/local/etc/mongod.conf"
alias start_postgres="/opt/homebrew/opt/postgresql@14/bin/postgres -D /opt/homebrew/var/postgresql@14"
alias start_mysql="mysql.server start"
alias stop_mysql="mysql.server stop"
alias tmux="env TERM=xterm-256color tmux"
# alias vim="nvim"

# Respecting .gitignore, .hgignore, and svn:ignore (ag will do the filtering)
# export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'


# Functions
# alias generate_random='env LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c 10'
function generate_random
  if test -e $argv
    echo "Usage generate_random [LENGTH]"
  else
    LC_ALL=C tr -dc A-Za-z0-9 </dev/urandom | head -c $argv ; echo ''
  end
end

# iTerm integration
# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Locale
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

set -g fish_user_paths "/opt/homebrew/opt/node@16/bin" $fish_user_paths
fish_add_path /opt/homebrew/opt/node@16/bin

# Avoid "+[__NSCFConstantString initialize] may have been in progress in another thread when fork() was called" error
# github.com/rails/rails/issues/38560
set --export OBJC_DISABLE_INITIALIZE_FORK_SAFETY YES
