# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Initialize colors.
autoload -U colors
colors

# Allow for functions in the prompt.
setopt PROMPT_SUBST

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sleepwalker"

# Aliases
# alias ohmyzsh='mate ~/.oh-my-zsh'
alias hostsconfig='sudo mvim /etc/hosts'
alias vhostsconfig='sudo mvim /etc/apache2/extra/httpd-vhosts.conf'
alias zshconfig='mvim ~/.zshrc'
alias mvims='mvim --remote-silent'
alias v='mvim --remote-tab'
alias b='bundle exec'
alias virtuoso='cd /usr/local/Cellar/virtuoso/7.0.0/var/lib/virtuoso/db && virtuoso-t -f'

# VIM mode
#bindkey -v

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git ruby lighthouse)
plugins=(git brew ruby rails3 terminalapp zsh-syntax-highlighting vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$HOME/.rbenv/bin:$HOME/.rbenv/shims:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
### Added by PostgresApp
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# Disabling autocorrect for some commands
alias rspec='nocorrect rspec'
alias drush='nocorrect drush'

# rbenv
export RBENV_ROOT=/usr/local/opt/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Generic Colouriser
source "`brew --prefix`/etc/grc.bashrc"

export LC_ALL="en_US.UTF-8"
