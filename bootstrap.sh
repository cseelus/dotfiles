#!/bin/bash
# ----------------------------------------------------------------------
# bootstrap.sh
# This script bootstraps the dotfiles repo
# dotfiles in ~/.dotfiles
# ----------------------------------------------------------------------


# Variables
# ----------------------------------------------------------------------

# dotfiles directory
dir=~/.dotfiles
# old dotfiles backup directory
olddir=~/dotfiles_old
# list of files to symlink into homedir
symlinks=$(find $dir -maxdepth 2 -name \*.symlink)


# Functions
# ----------------------------------------------------------------------

install_fish () {
# Test to see if fish is installed.  If it is:
if [ -f /bin/fish -o -f /usr/bin/fish ]
then
  # Clone oh-my-fish repository from GitHub only if it isn't already present
  if [[ ! -d $HOME/.oh-my-fish ]]
  then
    git clone https://github.com/bpinto/oh-my-fish.git
  fi
  # Set the default shell to fish if it isn't currently set to fish
  if [[ ! $(echo $SHELL) == $(which fish) ]]
  then
    chsh -s $(which fish)
  fi
else
  # If fish isn't installed tell the user to install it
  echo "Please install fish, then re-run this script!"
  exit
fi
}


# Working it out
# ----------------------------------------------------------------------

# Install fish shell and oh-my-fish
install_fish

# Install vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# OSX only
if [ "$(uname -s)" == "Darwin" ]
then
  # Link keyremap4macbook
  ln -s $dir/keyremap4macbook/private.xml ~/Library/Application Support/KeyRemap4MacBook/private.xml
fi

# # create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# # change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for symlink in $symlinks
do
  # Get just the basename without .symlink extension
  target=$(basename $symlink)
  target="${target/.symlink/}"

  echo "Symlinking: $symlink to $HOME/.$target"
  if [ -f $HOME/.$target ]
    then
      echo "Moving existing .$target from ~ to $olddir"
      mv $HOME/.$target $dotfiles_old/
      rm -rf $HOME/.$target
  fi
  ln -s $symlink $HOME/.$target
done
