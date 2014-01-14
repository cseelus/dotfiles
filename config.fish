# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme (good ones are clearance, idan, numist)
set fish_theme clearance-fish

# Right promt (usually prints working directory in short form)
function fish_right_prompt -d "empty"
  # date "+%d.%m.%Y"
end

function fish_title
	pwd
end

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
set fish_plugins autojump bundler set git rails vi-mode

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# PATHs
set default_path /usr/bin /usr/sbin /bin /sbin
set homebrew /usr/local/bin /usr/local/sbin
set latex "/usr/texbin"
set brew_rbenv "/usr/local/var/rbenv/shims"
set -gx PATH $homebrew $latex $brew_rbenv $default_path
### Ruby (rbenv) ###
set -gx RBENV_ROOT /usr/local/var/rbenv

# Aliasing
alias bex="bundle exec"
alias hostsconfig="sudo mvim /etc/hosts"
alias vhostsconfig="sudo mvim /etc/apache2/extra/httpd-vhosts.conf"
alias fishconfig="vi ~/.config/fish/config.fish"
alias vi="mvim --remote-tab-silent"
alias vib="mvim --remote-silent"
alias virtuoso="cd /usr/local/Cellar/virtuoso/7.0.0/var/lib/virtuoso/db & virtuoso-t -f"
