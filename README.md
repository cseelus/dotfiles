# dotfiles

My unix dotfiles for 

- Atom
- Ctags
- Git
- Fish
- NeoVIM
- Pry
- Ruby
- Tmux
- Vim
- Zsh

## Set up macOS with Homebrew, NeoVim

1. Install Homebrew, then Fish shell & NeoVim
2. Set Fish as the default shell
    - Add `/opt/homebrew/bin/fish` to the top of `/etc/shells`
    - Execute `chsh -s /opt/homebrew/bin/fish`
2. Clone This repo
    - `git clone https://github.com/cseelus/dotfiles`
3. Link this repo to the `~/.config` folder 
   `ln -s ~/.dotfiles/config.symlink/ ~/.config`
