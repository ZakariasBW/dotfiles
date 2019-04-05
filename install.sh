#!/bin/bash

# Install packages
sudo apt-get update
sudo apt-get install git -y
sudo apt-get install vim -y
sudo apt-get install tmux -y


# Setup dotfiles
cd $HOME
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/ZakariasBW/dotfiles.git
shopt -s expand_aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"' >> $HOME/.bashrc
dotfiles config --local status.showUntrackedFiles no

# Import dotfiles
dotfiles checkout .

# Setup vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo $'# Set vim as defualt editor \nexport VISUAL=vim \nexport EDITOR="$VISUAL"' >> $HOME/.bashrc

# Clean up
rm -r dotfiles
rm README.md install.sh
rm wget-log

echo 'Complete, restart shell in order to get dotfiles working: "$ exec bash" '


